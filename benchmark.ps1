$model = "qwen3:4b"
$prompt = "Explain the theory of relativity in simple terms."
$tokensToGenerate = 200

$body = @{
    model = $model
    prompt = $prompt
    options = @{
        num_predict = $tokensToGenerate
    }
} | ConvertTo-Json -Depth 3

$stopwatch = [System.Diagnostics.Stopwatch]::StartNew()

$response = Invoke-RestMethod -Uri "http://localhost:11434/api/generate" `
    -Method POST -ContentType "application/json" `
    -Body $body

$stopwatch.Stop()

# Mostra a resposta gerada
Write-Host "`nGenerated text:"
Write-Host $response.response

# Calcula TPS
$tps = $tokensToGenerate / $stopwatch.Elapsed.TotalSeconds
$tpsRounded = [Math]::Round($tps, 2)
Write-Host "`nTPS = $tpsRounded tokens/sec"

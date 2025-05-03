# 1. send a request and timestamp before/after
start=$(date +%s.%N)
curl -s -X POST http://localhost:11434/run/qwen3:0.6b \
  -H 'Content-Type: application/json' \
  -d '{"prompt":"Hello","max_tokens":200}' > /dev/null
end=$(date +%s.%N)

# 2. calc tokens/sec (assumes 200 tokens)
elapsed=$(echo "$end - $start" | bc)
echo "TPS = $(echo "200 / $elapsed" | bc -l)"
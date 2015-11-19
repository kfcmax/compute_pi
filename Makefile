CFLAGS = -Wall -mavx -std=gnu99

.PHONY: clean default

default: pi_avx pi_baseline

pi_baseline:pi_baseline.c
	gcc $(CFLAGS) $< -o $@

pi_avx: pi_avx.c
	gcc $(CFLAGS) $< -o $@
	
	
clean:
	rm pi_baseline pi_avx 
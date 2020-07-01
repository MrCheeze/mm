.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_801C20A0
/* 291192 0x801C20A0 */ .byte	0x05
glabel D_801C20A1
/* 291192 0x801C20A0 */ .byte	0x05
glabel D_801C20A2
/* 291192 0x801C20A0 */ .byte	0x05
glabel D_801C20A3
/* 291192 0x801C20A0 */ .byte	0x05
glabel D_801C20A4
/* 291193 0x801C20A4 */ .byte	0x05
glabel D_801C20A5
/* 291193 0x801C20A4 */ .byte	0x0B
glabel D_801C20A6
/* 291193 0x801C20A4 */ .byte	0x0B
glabel D_801C20A7
/* 291193 0x801C20A4 */ .byte	0x11
glabel D_801C20A8
/* 291194 0x801C20A8 */ .short	0x1111
glabel D_801C20AA
/* 291194 0x801C20A8 */ .byte	0x1D
glabel D_801C20AB
/* 291194 0x801C20A8 */ .byte	0x23
glabel D_801C20AC
/* 291195 0x801C20AC */ .byte	0x29
glabel D_801C20AD
/* 291195 0x801C20AC */ .byte	0x2F
glabel D_801C20AE
/* 291195 0x801C20AC */ .byte	0x28
glabel D_801C20AF
/* 291195 0x801C20AC */ .byte	0x26
glabel D_801C20B0
/* 291196 0x801C20B0 */ .byte	0x19
glabel D_801C20B1
/* 291196 0x801C20B0 */ .byte	0x20
glabel D_801C20B2
/* 291196 0x801C20B0 */ .byte	0x1E
glabel D_801C20B3
/* 291196 0x801C20B0 */ .byte	0x2C
glabel D_801C20B4
/* 291197 0x801C20B4 */ .byte	0x24
glabel D_801C20B5
/* 291197 0x801C20B4 */ .byte	0x25
glabel D_801C20B6
/* 291197 0x801C20B4 */ .byte	0x18
glabel D_801C20B7
/* 291197 0x801C20B4 */ .byte	0x27
glabel D_801C20B8
/* 291198 0x801C20B8 */ .byte	0x1C
glabel D_801C20B9
/* 291198 0x801C20B8 */ .byte	0x2B
glabel D_801C20BA
/* 291198 0x801C20B8 */ .byte	0x21
glabel D_801C20BB
/* 291198 0x801C20B8 */ .byte	0x2A
glabel D_801C20BC
/* 291199 0x801C20BC */ .byte	0x2D
glabel D_801C20BD
/* 291199 0x801C20BC */ .byte	0x1B
glabel D_801C20BE
/* 291199 0x801C20BC */ .byte	0x1F
glabel D_801C20BF
/* 291199 0x801C20BC */ .byte	0x1A
glabel D_801C20C0
/* 291200 0x801C20C0 */ .byte	0x22
glabel D_801C20C1
/* 291200 0x801C20C0 */ .byte	0x2E
/* 291200 0x801C20C0 */ .short	0x0101
/* 291201 0x801C20C4 */ .word	0x01000000
glabel D_801C20C8
/* 291202 0x801C20C8 */ .word	0x00000000
/* 291203 0x801C20CC */ .word	0x00000000
/* 291204 0x801C20D0 */ .word	0x00000000
/* 291205 0x801C20D4 */ .word	0x00000000
/* 291206 0x801C20D8 */ .word	0x00000000
/* 291207 0x801C20DC */ .word	0x00000000
/* 291208 0x801C20E0 */ .word	0x00000000
/* 291209 0x801C20E4 */ .word	0x00000000
/* 291210 0x801C20E8 */ .word	0x00000000
/* 291211 0x801C20EC */ .word	0x00000014
/* 291212 0x801C20F0 */ .word	0x00140014
/* 291213 0x801C20F4 */ .word	0x00140000
/* 291214 0x801C20F8 */ .word	0x00140005
/* 291215 0x801C20FC */ .word	0x00140014
/* 291216 0x801C2100 */ .word	0x00320032
/* 291217 0x801C2104 */ .word	0x00C80014
/* 291218 0x801C2108 */ .word	0x00140014
/* 291219 0x801C210C */ .word	0x00C80005
/* 291220 0x801C2110 */ .word	0x000000C8
/* 291221 0x801C2114 */ .word	0x00140000
/* 291222 0x801C2118 */ .word	0x00000000
/* 291223 0x801C211C */ .word	0x00000000
/* 291224 0x801C2120 */ .word	0x00000000
/* 291225 0x801C2124 */ .word	0x00000000
/* 291226 0x801C2128 */ .word	0x00000000
glabel scenesPerMapArea
/* 291227 0x801C212C */ .word	0x0037002F
/* 291228 0x801C2130 */ .word	0x003C0025
/* 291229 0x801C2134 */ .word	0x0038003B
/* 291230 0x801C2138 */ .word	0x00140023
/* 291231 0x801C213C */ .word	0x004A0028
/* 291232 0x801C2140 */ .word	0xFFFF0000
/* 291233 0x801C2144 */ .word	0x00000000
/* 291234 0x801C2148 */ .word	0x00000000
/* 291235 0x801C214C */ .word	0x00000000
/* 291236 0x801C2150 */ .word	0x00000000
/* 291237 0x801C2154 */ .word	0x00000000
/* 291238 0x801C2158 */ .word	0x00000000
/* 291239 0x801C215C */ .word	0x00000000
/* 291240 0x801C2160 */ .word	0x00000033
/* 291241 0x801C2164 */ .word	0x004CFFFF
/* 291242 0x801C2168 */ .word	0x00000000
/* 291243 0x801C216C */ .word	0x00000000
/* 291244 0x801C2170 */ .word	0x00000000
/* 291245 0x801C2174 */ .word	0x00000000
/* 291246 0x801C2178 */ .word	0x00000000
/* 291247 0x801C217C */ .word	0x00000000
/* 291248 0x801C2180 */ .word	0x00000000
/* 291249 0x801C2184 */ .word	0x00000000
/* 291250 0x801C2188 */ .word	0x00000000
/* 291251 0x801C218C */ .word	0x00000000
/* 291252 0x801C2190 */ .word	0x00000000
/* 291253 0x801C2194 */ .word	0x00000000
/* 291254 0x801C2198 */ .word	0x00350022
/* 291255 0x801C219C */ .word	0x00100042
/* 291256 0x801C21A0 */ .word	0x0041006A
/* 291257 0x801C21A4 */ .word	0xFFFF0000
/* 291258 0x801C21A8 */ .word	0x00000000
/* 291259 0x801C21AC */ .word	0x00000000
/* 291260 0x801C21B0 */ .word	0x00000000
/* 291261 0x801C21B4 */ .word	0x00000000
/* 291262 0x801C21B8 */ .word	0x00000000
/* 291263 0x801C21BC */ .word	0x00000000
/* 291264 0x801C21C0 */ .word	0x00000000
/* 291265 0x801C21C4 */ .word	0x00000000
/* 291266 0x801C21C8 */ .word	0x00000000
/* 291267 0x801C21CC */ .word	0x0000002B
/* 291268 0x801C21D0 */ .word	0x003E0064
/* 291269 0x801C21D4 */ .word	0x0052FFFF
/* 291270 0x801C21D8 */ .word	0x00000000
/* 291271 0x801C21DC */ .word	0x00000000
/* 291272 0x801C21E0 */ .word	0x00000000
/* 291273 0x801C21E4 */ .word	0x00000000
/* 291274 0x801C21E8 */ .word	0x00000000
/* 291275 0x801C21EC */ .word	0x00000000
/* 291276 0x801C21F0 */ .word	0x00000000
/* 291277 0x801C21F4 */ .word	0x00000000
/* 291278 0x801C21F8 */ .word	0x00000000
/* 291279 0x801C21FC */ .word	0x00000000
/* 291280 0x801C2200 */ .word	0x00000000
/* 291281 0x801C2204 */ .word	0x00450000
/* 291282 0x801C2208 */ .word	0x0057000A
/* 291283 0x801C220C */ .word	0x00460027
/* 291284 0x801C2210 */ .word	0xFFFF0000
/* 291285 0x801C2214 */ .word	0x00000000
/* 291286 0x801C2218 */ .word	0x00000000
/* 291287 0x801C221C */ .word	0x00000000
/* 291288 0x801C2220 */ .word	0x00000000
/* 291289 0x801C2224 */ .word	0x00000000
/* 291290 0x801C2228 */ .word	0x00000000
/* 291291 0x801C222C */ .word	0x00000000
/* 291292 0x801C2230 */ .word	0x00000000
/* 291293 0x801C2234 */ .word	0x00000000
/* 291294 0x801C2238 */ .word	0x0000002D
/* 291295 0x801C223C */ .word	0x0029001C
/* 291296 0x801C2240 */ .word	0x00400024
/* 291297 0x801C2244 */ .word	0x0053006C
/* 291298 0x801C2248 */ .word	0x00200011
/* 291299 0x801C224C */ .word	0x00170061
/* 291300 0x801C2250 */ .word	0x00120015
/* 291301 0x801C2254 */ .word	0x006D0068
/* 291302 0x801C2258 */ .word	0x000D0034
/* 291303 0x801C225C */ .word	0x0054002E
/* 291304 0x801C2260 */ .word	0x0039006E
/* 291305 0x801C2264 */ .word	0x006F0063
/* 291306 0x801C2268 */ .word	0x00190070
/* 291307 0x801C226C */ .word	0x001EFFFF
/* 291308 0x801C2270 */ .word	0x0050005A
/* 291309 0x801C2274 */ .word	0x002C005C
/* 291310 0x801C2278 */ .word	0x005B006B
/* 291311 0x801C227C */ .word	0x004E005D
/* 291312 0x801C2280 */ .word	0x005EFFFF
/* 291313 0x801C2284 */ .word	0x00000000
/* 291314 0x801C2288 */ .word	0x00000000
/* 291315 0x801C228C */ .word	0x00000000
/* 291316 0x801C2290 */ .word	0x00000000
/* 291317 0x801C2294 */ .word	0x00000000
/* 291318 0x801C2298 */ .word	0x00000000
/* 291319 0x801C229C */ .word	0x00000000
/* 291320 0x801C22A0 */ .word	0x00000000
/* 291321 0x801C22A4 */ .word	0x00000043
/* 291322 0x801C22A8 */ .word	0x0030FFFF
/* 291323 0x801C22AC */ .word	0x00000000
/* 291324 0x801C22B0 */ .word	0x00000000
/* 291325 0x801C22B4 */ .word	0x00000000
/* 291326 0x801C22B8 */ .word	0x00000000
/* 291327 0x801C22BC */ .word	0x00000000
/* 291328 0x801C22C0 */ .word	0x00000000
/* 291329 0x801C22C4 */ .word	0x00000000
/* 291330 0x801C22C8 */ .word	0x00000000
/* 291331 0x801C22CC */ .word	0x00000000
/* 291332 0x801C22D0 */ .word	0x00000000
/* 291333 0x801C22D4 */ .word	0x00000000
/* 291334 0x801C22D8 */ .word	0x00000000
/* 291335 0x801C22DC */ .word	0x001D0056
/* 291336 0x801C22E0 */ .word	0x0013004F
/* 291337 0x801C22E4 */ .word	0x00550060
/* 291338 0x801C22E8 */ .word	0x004B0051
/* 291339 0x801C22EC */ .word	0x000CFFFF
/* 291340 0x801C22F0 */ .word	0x00000000
/* 291341 0x801C22F4 */ .word	0x00000000
/* 291342 0x801C22F8 */ .word	0x00000000
/* 291343 0x801C22FC */ .word	0x00000000
/* 291344 0x801C2300 */ .word	0x00000000
/* 291345 0x801C2304 */ .word	0x00000000
/* 291346 0x801C2308 */ .word	0x00000000
/* 291347 0x801C230C */ .word	0x00000000
/* 291348 0x801C2310 */ .word	0x0000004D
/* 291349 0x801C2314 */ .word	0x00480032
/* 291350 0x801C2318 */ .word	0x003DFFFF
/* 291351 0x801C231C */ .word	0x00000000
/* 291352 0x801C2320 */ .word	0x00000000
/* 291353 0x801C2324 */ .word	0x00000000
/* 291354 0x801C2328 */ .word	0x00000000
/* 291355 0x801C232C */ .word	0x00000000
/* 291356 0x801C2330 */ .word	0x00000000
/* 291357 0x801C2334 */ .word	0x00000000
/* 291358 0x801C2338 */ .word	0x00000000
/* 291359 0x801C233C */ .word	0x00000000
/* 291360 0x801C2340 */ .word	0x00000000
/* 291361 0x801C2344 */ .word	0x00000000
/* 291362 0x801C2348 */ .word	0x00580059
/* 291363 0x801C234C */ .word	0xFFFF0000
/* 291364 0x801C2350 */ .word	0x00000000
/* 291365 0x801C2354 */ .word	0x00000000
/* 291366 0x801C2358 */ .word	0x00000000
/* 291367 0x801C235C */ .word	0x00000000
/* 291368 0x801C2360 */ .word	0x00000000
/* 291369 0x801C2364 */ .word	0x00000000
/* 291370 0x801C2368 */ .word	0x00000000
/* 291371 0x801C236C */ .word	0x00000000
/* 291372 0x801C2370 */ .word	0x00000000
/* 291373 0x801C2374 */ .word	0x00000000
/* 291374 0x801C2378 */ .word	0x00000000
/* 291375 0x801C237C */ .word	0x00000000
glabel D_801C2380
/* 291376 0x801C2380 */ .word	0x002D0043
/* 291377 0x801C2384 */ .word	0x001C0040
/* 291378 0x801C2388 */ .word	0x0053006C
/* 291379 0x801C238C */ .word	0x006D006E
/* 291380 0x801C2390 */ .word	0x006F0070
/* 291381 0x801C2394 */ .word	0xFFFF0000
glabel D_801C2398
/* 291382 0x801C2398 */ .word	0x00450000
/* 291383 0x801C239C */ .word	0x0046002B
/* 291384 0x801C23A0 */ .word	0x003E0027
/* 291385 0x801C23A4 */ .word	0xFFFF0000
/* 291386 0x801C23A8 */ .word	0x00000000
/* 291387 0x801C23AC */ .word	0x00000000
glabel D_801C23B0
/* 291388 0x801C23B0 */ .word	0x0050005A
/* 291389 0x801C23B4 */ .word	0x004D0048
/* 291390 0x801C23B8 */ .word	0x0032005C
/* 291391 0x801C23BC */ .word	0x005B006B
/* 291392 0x801C23C0 */ .word	0x005D005E
/* 291393 0x801C23C4 */ .word	0xFFFF0000
glabel D_801C23C8
/* 291394 0x801C23C8 */ .word	0x00350022
/* 291395 0x801C23CC */ .word	0x00100042
/* 291396 0x801C23D0 */ .word	0x0041006A
/* 291397 0x801C23D4 */ .word	0xFFFF0000
/* 291398 0x801C23D8 */ .word	0x00000000
/* 291399 0x801C23DC */ .word	0x00000000
glabel D_801C23E0
/* 291400 0x801C23E0 */ .word	0x00370025
/* 291401 0x801C23E4 */ .word	0x0038003B
/* 291402 0x801C23E8 */ .word	0x00140033
/* 291403 0x801C23EC */ .word	0x004AFFFF
/* 291404 0x801C23F0 */ .word	0x00000000
/* 291405 0x801C23F4 */ .word	0x00000000
glabel D_801C23F8
/* 291406 0x801C23F8 */ .word	0x00580059
/* 291407 0x801C23FC */ .word	0x001D0013
/* 291408 0x801C2400 */ .word	0x004BFFFF
/* 291409 0x801C2404 */ .word	0x00000000
/* 291410 0x801C2408 */ .word	0x00000000
/* 291411 0x801C240C */ .word	0x00000000
glabel D_801C2410
/* 291412 0x801C2410 */ .word	0x00000000
/* 291413 0x801C2414 */ .word	0x00000000
/* 291414 0x801C2418 */ .word	0x00000000
/* 291415 0x801C241C */ .word	0x00000000
/* 291416 0x801C2420 */ .word	0x00000101
/* 291417 0x801C2424 */ .word	0x01010101
/* 291418 0x801C2428 */ .word	0x01010101
/* 291419 0x801C242C */ .word	0x01010101
/* 291420 0x801C2430 */ .word	0x01010101
/* 291421 0x801C2434 */ .word	0x01010101
/* 291422 0x801C2438 */ .word	0x00000000
/* 291423 0x801C243C */ .word	0x00000000
/* 291424 0x801C2440 */ .word	0x00000000
/* 291425 0x801C2444 */ .word	0x00010000
/* 291426 0x801C2448 */ .word	0x00000000
/* 291427 0x801C244C */ .word	0x00000000
/* 291428 0x801C2450 */ .word	0x00000000
/* 291429 0x801C2454 */ .word	0x00000000
/* 291430 0x801C2458 */ .word	0x00000000
/* 291431 0x801C245C */ .word	0x00000000
/* 291432 0x801C2460 */ .word	0x00000000
/* 291433 0x801C2464 */ .word	0x00000000
/* 291434 0x801C2468 */ .word	0x00000000
/* 291435 0x801C246C */ .word	0x00000000
/* 291436 0x801C2470 */ .word	0x00000000
/* 291437 0x801C2474 */ .word	0x00000000
/* 291438 0x801C2478 */ .word	0x00000000
/* 291439 0x801C247C */ .word	0x00000000
/* 291440 0x801C2480 */ .word	0x00000100
/* 291441 0x801C2484 */ .word	0x00000000
/* 291442 0x801C2488 */ .word	0x00000000
/* 291443 0x801C248C */ .word	0x00000101
/* 291444 0x801C2490 */ .word	0x01000000
/* 291445 0x801C2494 */ .word	0x01010101
/* 291446 0x801C2498 */ .word	0x01010101
/* 291447 0x801C249C */ .word	0x01010101
/* 291448 0x801C24A0 */ .word	0x01010101
/* 291449 0x801C24A4 */ .word	0x01010101
/* 291450 0x801C24A8 */ .word	0x01010101
/* 291451 0x801C24AC */ .word	0x01010101
/* 291452 0x801C24B0 */ .word	0x01010101
/* 291453 0x801C24B4 */ .word	0x01010101
/* 291454 0x801C24B8 */ .word	0x00000000
/* 291455 0x801C24BC */ .word	0x00000000
/* 291456 0x801C24C0 */ .word	0x00000000
/* 291457 0x801C24C4 */ .word	0x00000000
/* 291458 0x801C24C8 */ .word	0x00000000
/* 291459 0x801C24CC */ .word	0x00000000
/* 291460 0x801C24D0 */ .word	0x00000000
/* 291461 0x801C24D4 */ .word	0x00000000
/* 291462 0x801C24D8 */ .word	0x00000000
/* 291463 0x801C24DC */ .word	0x00000000
/* 291464 0x801C24E0 */ .word	0x00000000
/* 291465 0x801C24E4 */ .word	0x00000000
/* 291466 0x801C24E8 */ .word	0x00000000
/* 291467 0x801C24EC */ .word	0x00000000
/* 291468 0x801C24F0 */ .word	0x00000000
/* 291469 0x801C24F4 */ .word	0x01000000
/* 291470 0x801C24F8 */ .word	0x00000000
/* 291471 0x801C24FC */ .word	0x00000000
/* 291472 0x801C2500 */ .word	0x00010100
/* 291473 0x801C2504 */ .word	0x00000101
/* 291474 0x801C2508 */ .word	0x01010101
/* 291475 0x801C250C */ .word	0x01010101
/* 291476 0x801C2510 */ .word	0x01010101
/* 291477 0x801C2514 */ .word	0x01010101
/* 291478 0x801C2518 */ .word	0x01010101
/* 291479 0x801C251C */ .word	0x01010101
/* 291480 0x801C2520 */ .word	0x01010101
/* 291481 0x801C2524 */ .word	0x01010101
/* 291482 0x801C2528 */ .word	0x01010000
/* 291483 0x801C252C */ .word	0x00000000
/* 291484 0x801C2530 */ .word	0x00000000
/* 291485 0x801C2534 */ .word	0x00000000
/* 291486 0x801C2538 */ .word	0x00000000
/* 291487 0x801C253C */ .word	0x00000000
/* 291488 0x801C2540 */ .word	0x00000000
/* 291489 0x801C2544 */ .word	0x00000000
/* 291490 0x801C2548 */ .word	0x00000000
/* 291491 0x801C254C */ .word	0x00000000
/* 291492 0x801C2550 */ .word	0x00000000
/* 291493 0x801C2554 */ .word	0x00000000
/* 291494 0x801C2558 */ .word	0x00000000
/* 291495 0x801C255C */ .word	0x00000000
/* 291496 0x801C2560 */ .word	0x00000000
/* 291497 0x801C2564 */ .word	0x00000100
/* 291498 0x801C2568 */ .word	0x00000000
/* 291499 0x801C256C */ .word	0x00000001
/* 291500 0x801C2570 */ .word	0x00000001
/* 291501 0x801C2574 */ .word	0x01000000
/* 291502 0x801C2578 */ .word	0x01010101
/* 291503 0x801C257C */ .word	0x01010101
/* 291504 0x801C2580 */ .word	0x01010101
/* 291505 0x801C2584 */ .word	0x01010101
/* 291506 0x801C2588 */ .word	0x01010101
/* 291507 0x801C258C */ .word	0x01010101
/* 291508 0x801C2590 */ .word	0x01010101
/* 291509 0x801C2594 */ .word	0x01010101
/* 291510 0x801C2598 */ .word	0x01010101
/* 291511 0x801C259C */ .word	0x00000000
/* 291512 0x801C25A0 */ .word	0x00000000
/* 291513 0x801C25A4 */ .word	0x00000000
/* 291514 0x801C25A8 */ .word	0x00000000
/* 291515 0x801C25AC */ .word	0x00000000
/* 291516 0x801C25B0 */ .word	0x00000000
/* 291517 0x801C25B4 */ .word	0x00000000
/* 291518 0x801C25B8 */ .word	0x00000000
/* 291519 0x801C25BC */ .word	0x00000000
/* 291520 0x801C25C0 */ .word	0x00000000
/* 291521 0x801C25C4 */ .word	0x00000000
/* 291522 0x801C25C8 */ .word	0x00000000
/* 291523 0x801C25CC */ .word	0x00000000
/* 291524 0x801C25D0 */ .word	0x00000000
/* 291525 0x801C25D4 */ .word	0x00000000
/* 291526 0x801C25D8 */ .word	0x01010101
/* 291527 0x801C25DC */ .word	0x01010101
/* 291528 0x801C25E0 */ .word	0x01010101
/* 291529 0x801C25E4 */ .word	0x00010101
/* 291530 0x801C25E8 */ .word	0x01010101
/* 291531 0x801C25EC */ .word	0x01010101
/* 291532 0x801C25F0 */ .word	0x01010101
/* 291533 0x801C25F4 */ .word	0x01010101
/* 291534 0x801C25F8 */ .word	0x01010101
/* 291535 0x801C25FC */ .word	0x01010101
/* 291536 0x801C2600 */ .word	0x01010101
/* 291537 0x801C2604 */ .word	0x01010101
/* 291538 0x801C2608 */ .word	0x01010101
/* 291539 0x801C260C */ .word	0x01010101
/* 291540 0x801C2610 */ .word	0x01010101
/* 291541 0x801C2614 */ .word	0x01010101
/* 291542 0x801C2618 */ .word	0x01010101
/* 291543 0x801C261C */ .word	0x01010101
/* 291544 0x801C2620 */ .word	0x01010101
/* 291545 0x801C2624 */ .word	0x01000000
/* 291546 0x801C2628 */ .word	0x00000000
/* 291547 0x801C262C */ .word	0x00000000
/* 291548 0x801C2630 */ .word	0x00000000
/* 291549 0x801C2634 */ .word	0x00000000
/* 291550 0x801C2638 */ .word	0x00000000
/* 291551 0x801C263C */ .word	0x00000000
/* 291552 0x801C2640 */ .word	0x00000000
/* 291553 0x801C2644 */ .word	0x00000000
/* 291554 0x801C2648 */ .word	0x00000000
/* 291555 0x801C264C */ .word	0x00000000
glabel D_801C2650
/* 291556 0x801C2650 */ .word	0x01F0B000
/* 291557 0x801C2654 */ .word	0x01F0B070
/* 291558 0x801C2658 */ .word	0x01F0C000
/* 291559 0x801C265C */ .word	0x01F0C010
glabel D_801C2660
/* 291560 0x801C2660 */ .word	0x00000000
/* 291561 0x801C2664 */ .word	0x00000000
/* 291562 0x801C2668 */ .word	0x01E5D000
/* 291563 0x801C266C */ .word	0x01E61D00
/* 291564 0x801C2670 */ .word	0x01E62000
/* 291565 0x801C2674 */ .word	0x01E63D00
/* 291566 0x801C2678 */ .word	0x01E64000
/* 291567 0x801C267C */ .word	0x01E68800
/* 291568 0x801C2680 */ .word	0x01E69000
/* 291569 0x801C2684 */ .word	0x01E6E200
/* 291570 0x801C2688 */ .word	0x01E6F000
/* 291571 0x801C268C */ .word	0x01E75800
/* 291572 0x801C2690 */ .word	0x01E76000
/* 291573 0x801C2694 */ .word	0x01E7B460
/* 291574 0x801C2698 */ .word	0x01E7C000
/* 291575 0x801C269C */ .word	0x01E7C010
/* 291576 0x801C26A0 */ .word	0x01E7D000
/* 291577 0x801C26A4 */ .word	nintendo_rogo_static_vrom_start
glabel sceneHeaderFuncTable
/* 291578 0x801C26A8 */ .word	Scene_HeaderCommand00
/* 291579 0x801C26AC */ .word	Scene_HeaderCommand01
/* 291580 0x801C26B0 */ .word	Scene_HeaderCommand02
/* 291581 0x801C26B4 */ .word	Scene_HeaderCommand03
/* 291582 0x801C26B8 */ .word	Scene_HeaderCommand04
/* 291583 0x801C26BC */ .word	Scene_HeaderCommand05
/* 291584 0x801C26C0 */ .word	Scene_HeaderCommand06
/* 291585 0x801C26C4 */ .word	Scene_HeaderCommand07
/* 291586 0x801C26C8 */ .word	Scene_HeaderCommand08
/* 291587 0x801C26CC */ .word	Scene_HeaderCommand09
/* 291588 0x801C26D0 */ .word	Scene_HeaderCommand0A
/* 291589 0x801C26D4 */ .word	Scene_HeaderCommand0B
/* 291590 0x801C26D8 */ .word	Scene_HeaderCommand0C
/* 291591 0x801C26DC */ .word	Scene_HeaderCommand0D
/* 291592 0x801C26E0 */ .word	Scene_HeaderCommand0E
/* 291593 0x801C26E4 */ .word	Scene_HeaderCommand0F
/* 291594 0x801C26E8 */ .word	Scene_HeaderCommand10
/* 291595 0x801C26EC */ .word	Scene_HeaderCommand11
/* 291596 0x801C26F0 */ .word	Scene_HeaderCommand12
/* 291597 0x801C26F4 */ .word	Scene_HeaderCommand13
/* 291598 0x801C26F8 */ .word	0x00000000
/* 291599 0x801C26FC */ .word	Scene_HeaderCommand15
/* 291600 0x801C2700 */ .word	Scene_HeaderCommand16
/* 291601 0x801C2704 */ .word	Scene_HeaderCommand17
/* 291602 0x801C2708 */ .word	Scene_HeaderCommand18
/* 291603 0x801C270C */ .word	Scene_HeaderCommand19
/* 291604 0x801C2710 */ .word	Scene_HeaderCommand1A
/* 291605 0x801C2714 */ .word	Scene_HeaderCommand1B
/* 291606 0x801C2718 */ .word	Scene_HeaderCommand1C
/* 291607 0x801C271C */ .word	Scene_HeaderCommand1D
/* 291608 0x801C2720 */ .word	Scene_HeaderCommand1E
/* 291609 0x801C2724 */ .word	0x00000000
/* 291610 0x801C2728 */ .word	0x00000000
/* 291611 0x801C272C */ .word	0x00000000

function tsp_greedy ()

  fprintf ( 1, '\n' );
  distance = [    0 633 257  91 412 150  80 134 259 505 353 324  70 211 268 246                    #dolnoœl¹skie
                633   0 390 661 227 488 572 530 555 289 282 638 567 466 420 745                  #lubelskie
                257 390   0 228 169 112 196 154 372 262 110 437 191  74  53 472                  #lubuskie
                 91 661 228   0 383 120  77 105 175 476 324 240  27 182 239 237                  #³ódzkie
                412 227 169 383   0 267 351 309 457 196  61 421 346 243 199 528                  #ma³opolskie
                150 488 112 120 267   0  63  34 264 360 208 329  83 105 123 364                  #mazowieckie
                 80 572 196  77 351  63   0  29 232 444 292 297  47 150 207 332                  #opolskie
                134 530 154 105 309  34  29   0 249 402 250 314  68 108 165 349                  #podkarpackie
                259 555 372 175 457 264 232 249   0 495 240  95 189 326 383 202                  #podlaskie
                505 289 262 476 196 360 444 402 495   0 154 578 439 336 240 685                  #pomorskie
                353 282 110 324  61 208 292 250 240 154   0 435 287 184 140 542                  #œl¹skie
                324 638 437 240 421 329 297 314  95 578 435   0 254 391 448 145                  #œwiêtokrzyskie
                 70 567 191  27 346  83  47  68 189 439 287 254   0 145 202 289                  #mazurskie
                211 466  74 182 243 105 150 108 326 336 184 391 145   0  57 426                  #warmiñsko-mazurskie
                268 420  53 239 199 123 207 165 383 240 140 448 202  57   0 457                  #wielkopolskie
                246 745 472 237 528 364 332 349 202 685 542 145 289 426 457   0   ];             #zachodniopomorskie 

  [ m, n ] = size ( distance );

  v = diag ( distance );
  test = norm ( v );

  test = norm ( distance - distance' );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Macierz odleglosci miedzy miastami D:\n' )
  fprintf ( 1, '\n' );

  disp ( distance )

  cost_best = Inf;
  p_best = randperm ( n );

  for start = 1 : n

    p = path_greedy ( n, distance, start );
    cost = path_cost ( n, distance, p );

      p_best = p;
      cost_best = cost;
      fprintf ( '  Dlugosc poszczegolnych tras  %d: Koszt = %g\n', start, cost );
   
  end

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Najlepsza droga:\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Krok     Z  Do        Dystans\n' );
  fprintf ( 1, '\n' );
  for i1 = 1 : n
    i2 = mod ( i1, n ) + 1;
    fprintf ( 1, '  %4d    %2d  %2d  %14.6g\n', ...
      i2, p_best(i1), p_best(i2), distance ( p_best(i1), p_best(i2) ) );
  end
  fprintf ( 1, '  ----    --  --  --------------\n' );
  fprintf ( 1, '  koszt:           %14.6g\n', cost_best );

  fprintf ( 1, '\n' );
  fprintf ( 1, '\n' );

  return
end
function cost = path_cost ( n, distance, p );


  cost = 0.0;
  i1 = n;
  for i2 = 1 : n
    cost = cost + distance ( p(i1), p(i2) );
    i1 = i2;
  end

  return
end
function p = path_greedy ( n, distance, start );

  p = zeros ( n, 1 );
  p(1) = start;

  d = distance(1:n,1:n);
  d(:,start) = Inf;

  for i = 1 : n
    d(i,i) = Inf;
  end

  from = start;
  for j = 2 : n
    [ ~, to ] = min ( d(from,:) );
    p(j) = to;
    d(:,to) = Inf;
  end
  
  return
end
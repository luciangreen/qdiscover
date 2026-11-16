% 200 recorded inputs and outputs (swipl -g record -t halt io/run.pl writes this; check compares).
io(1, simplify, [[]], []).
io(2, discover, [2, 17], found(0)).
io(3, commute, [cnot(0, 2), x(0)], false).
io(4, simplify, [[cnot(1, 0), cnot(0, 1), cnot(1, 0), cnot(1, 0)]], [cnot(1, 0), cnot(0, 1)]).
io(5, discover, [4, 9], found(0)).
io(6, commute, [cnot(2, 0), cnot(2, 1)], false).
io(7, simplify, [[cnot(1, 0), x(0), x(1), x(1), x(3), x(3)]], [cnot(1, 0), x(0)]).
io(8, discover, [4, 6], found(0)).
io(9, commute, [cnot(1, 0), x(1)], false).
io(10, simplify, [[x(0), x(0), x(1), x(1), cnot(1, 0), cnot(1, 0)]], []).
io(11, discover, [2, 25], found(0)).
io(12, commute, [x(1), x(0)], true).
io(13, simplify, [[]], []).
io(14, discover, [4, 23], found(0)).
io(15, commute, [x(1), cnot(0, 2)], true).
io(16, simplify, [[cnot(0, 1), cnot(1, 0), cnot(0, 1), cnot(1, 0), cnot(0, 1)]], [cnot(0, 1), cnot(1, 0), cnot(0, 1), cnot(1, 0), cnot(0, 1)]).
io(17, discover, [4, 21], found(0)).
io(18, commute, [x(1), cnot(1, 0)], false).
io(19, simplify, [[x(2), cnot(2, 0), x(2), x(3)]], [x(2), cnot(2, 0), x(2), x(3)]).
io(20, discover, [2, 17], found(0)).
io(21, commute, [cnot(2, 1), cnot(2, 1)], false).
io(22, simplify, [[cnot(3, 1), cnot(2, 0), x(0), cnot(1, 3)]], [cnot(3, 1), cnot(2, 0), x(0), cnot(1, 3)]).
io(23, discover, [2, 9], found(0)).
io(24, commute, [x(0), x(0)], false).
io(25, simplify, [[cnot(1, 3), cnot(2, 3), cnot(0, 1), cnot(1, 0), cnot(1, 3), cnot(3, 0), cnot(2, 1)]], [cnot(1, 3), cnot(2, 3), cnot(0, 1), cnot(1, 0), cnot(1, 3), cnot(3, 0), cnot(2, 1)]).
io(26, discover, [4, 15], found(0)).
io(27, commute, [cnot(2, 1), cnot(2, 0)], false).
io(28, simplify, [[cnot(1, 0), cnot(0, 2), cnot(0, 3), x(1), x(1), x(0), x(0)]], [cnot(1, 0), cnot(0, 2), cnot(0, 3)]).
io(29, discover, [2, 5], found(0)).
io(30, commute, [x(1), x(2)], true).
io(31, simplify, [[cnot(2, 1), cnot(2, 0)]], [cnot(2, 1), cnot(2, 0)]).
io(32, discover, [2, 10], found(0)).
io(33, commute, [cnot(1, 0), cnot(2, 0)], false).
io(34, simplify, [[cnot(2, 1), cnot(2, 0), x(0)]], [cnot(2, 1), cnot(2, 0), x(0)]).
io(35, discover, [3, 11], found(2)).
io(36, commute, [x(2), x(0)], true).
io(37, simplify, [[x(0), cnot(1, 0), cnot(2, 1), cnot(0, 1)]], [x(0), cnot(1, 0), cnot(2, 1), cnot(0, 1)]).
io(38, discover, [3, 18], found(2)).
io(39, commute, [cnot(0, 1), cnot(2, 0)], false).
io(40, simplify, [[cnot(1, 2)]], [cnot(1, 2)]).
io(41, discover, [3, 21], found(2)).
io(42, commute, [cnot(1, 2), cnot(0, 2)], false).
io(43, simplify, [[]], []).
io(44, discover, [3, 22], found(2)).
io(45, commute, [x(0), cnot(0, 1)], false).
io(46, simplify, [[]], []).
io(47, discover, [4, 23], found(0)).
io(48, commute, [x(2), cnot(1, 2)], false).
io(49, simplify, [[x(1), x(0), cnot(1, 0), x(1)]], [x(1), x(0), cnot(1, 0), x(1)]).
io(50, discover, [4, 15], found(0)).
io(51, commute, [x(2), cnot(2, 1)], false).
io(52, simplify, [[x(0), cnot(1, 0), cnot(0, 1), cnot(0, 1), x(0), cnot(1, 0)]], [x(0), cnot(1, 0), x(0), cnot(1, 0)]).
io(53, discover, [3, 16], found(2)).
io(54, commute, [cnot(1, 2), x(0)], true).
io(55, simplify, [[x(1), cnot(0, 1), cnot(0, 1), x(1), x(0), cnot(0, 1)]], [x(0), cnot(0, 1)]).
io(56, discover, [4, 6], found(0)).
io(57, commute, [cnot(2, 1), cnot(2, 0)], false).
io(58, simplify, [[cnot(0, 1)]], [cnot(0, 1)]).
io(59, discover, [2, 10], found(0)).
io(60, commute, [cnot(1, 0), x(2)], true).
io(61, simplify, [[cnot(1, 0), cnot(0, 1), x(1), cnot(1, 0), x(0), cnot(1, 0), cnot(0, 1)]], [cnot(1, 0), cnot(0, 1), x(1), cnot(1, 0), x(0), cnot(1, 0), cnot(0, 1)]).
io(62, discover, [4, 11], found(0)).
io(63, commute, [x(1), x(1)], false).
io(64, simplify, [[x(0), cnot(0, 1), cnot(0, 1), cnot(1, 0), cnot(1, 0), x(1), cnot(0, 1)]], [x(0), x(1), cnot(0, 1)]).
io(65, discover, [3, 12], found(2)).
io(66, commute, [cnot(0, 1), cnot(2, 1)], false).
io(67, simplify, [[cnot(0, 1), x(1), x(1), cnot(1, 0), x(1), cnot(0, 1), x(1)]], [cnot(0, 1), cnot(1, 0), x(1), cnot(0, 1), x(1)]).
io(68, discover, [3, 21], found(2)).
io(69, commute, [cnot(0, 2), x(0)], false).
io(70, simplify, [[cnot(0, 1)]], [cnot(0, 1)]).
io(71, discover, [3, 16], found(2)).
io(72, commute, [cnot(1, 0), x(2)], true).
io(73, simplify, [[x(0), cnot(1, 3)]], [x(0), cnot(1, 3)]).
io(74, discover, [2, 25], found(0)).
io(75, commute, [cnot(1, 2), cnot(0, 2)], false).
io(76, simplify, [[cnot(0, 1), cnot(1, 0)]], [cnot(0, 1), cnot(1, 0)]).
io(77, discover, [2, 12], found(0)).
io(78, commute, [cnot(2, 1), x(1)], false).
io(79, simplify, [[x(0), cnot(0, 1), cnot(0, 1), cnot(1, 0), cnot(0, 1), x(0)]], [x(0), cnot(1, 0), cnot(0, 1), x(0)]).
io(80, discover, [3, 16], found(2)).
io(81, commute, [x(0), cnot(0, 2)], false).
io(82, simplify, [[x(3), cnot(3, 2)]], [x(3), cnot(3, 2)]).
io(83, discover, [4, 20], found(0)).
io(84, commute, [x(1), cnot(1, 2)], false).
io(85, simplify, [[x(1), cnot(3, 2), x(1)]], [cnot(3, 2)]).
io(86, discover, [4, 19], found(0)).
io(87, commute, [cnot(2, 0), cnot(1, 0)], false).
io(88, simplify, [[x(2), cnot(3, 2), cnot(2, 1)]], [x(2), cnot(3, 2), cnot(2, 1)]).
io(89, discover, [2, 16], found(0)).
io(90, commute, [cnot(0, 1), x(0)], false).
io(91, simplify, [[cnot(0, 2), cnot(0, 2)]], []).
io(92, discover, [3, 13], found(2)).
io(93, commute, [cnot(2, 1), cnot(0, 2)], false).
io(94, simplify, [[x(3), cnot(3, 2), cnot(2, 0), x(3), cnot(2, 0), x(1), cnot(2, 1)]], [x(3), cnot(3, 2), x(3), x(1), cnot(2, 1)]).
io(95, discover, [4, 25], found(0)).
io(96, commute, [cnot(2, 0), cnot(1, 2)], false).
io(97, simplify, [[cnot(0, 1), cnot(1, 2), cnot(2, 1)]], [cnot(0, 1), cnot(1, 2), cnot(2, 1)]).
io(98, discover, [2, 18], found(0)).
io(99, commute, [cnot(2, 1), cnot(2, 0)], false).
io(100, simplify, [[x(2), cnot(2, 0), x(0), cnot(1, 2)]], [x(2), cnot(2, 0), x(0), cnot(1, 2)]).
io(101, discover, [4, 14], found(0)).
io(102, commute, [cnot(0, 1), cnot(2, 1)], false).
io(103, simplify, [[x(1), cnot(1, 0)]], [x(1), cnot(1, 0)]).
io(104, discover, [3, 25], found(2)).
io(105, commute, [x(0), cnot(2, 1)], true).
io(106, simplify, [[cnot(1, 0), cnot(0, 1)]], [cnot(1, 0), cnot(0, 1)]).
io(107, discover, [2, 20], found(0)).
io(108, commute, [cnot(2, 1), cnot(1, 0)], false).
io(109, simplify, [[x(2), cnot(0, 2), cnot(2, 0), x(0), x(0)]], [x(2), cnot(0, 2), cnot(2, 0)]).
io(110, discover, [4, 14], found(0)).
io(111, commute, [cnot(0, 1), cnot(1, 2)], false).
io(112, simplify, [[cnot(1, 2), cnot(1, 3), cnot(1, 0), cnot(2, 3), cnot(3, 1)]], [cnot(1, 2), cnot(1, 3), cnot(1, 0), cnot(2, 3), cnot(3, 1)]).
io(113, discover, [4, 16], found(0)).
io(114, commute, [cnot(2, 1), x(0)], true).
io(115, simplify, [[x(1), cnot(2, 1), x(2)]], [x(1), cnot(2, 1), x(2)]).
io(116, discover, [4, 19], found(0)).
io(117, commute, [cnot(0, 2), cnot(1, 0)], false).
io(118, simplify, [[x(1)]], [x(1)]).
io(119, discover, [4, 18], found(0)).
io(120, commute, [cnot(2, 0), cnot(2, 0)], false).
io(121, simplify, [[cnot(1, 0)]], [cnot(1, 0)]).
io(122, discover, [4, 12], found(0)).
io(123, commute, [cnot(1, 0), cnot(1, 2)], false).
io(124, simplify, [[cnot(1, 0), x(0)]], [cnot(1, 0), x(0)]).
io(125, discover, [4, 8], found(0)).
io(126, commute, [cnot(2, 1), cnot(1, 0)], false).
io(127, simplify, [[cnot(1, 2), cnot(1, 0)]], [cnot(1, 2), cnot(1, 0)]).
io(128, discover, [4, 18], found(0)).
io(129, commute, [x(2), cnot(2, 1)], false).
io(130, simplify, [[x(1), x(0), x(1), cnot(0, 2), x(1)]], [x(0), cnot(0, 2), x(1)]).
io(131, discover, [4, 6], found(0)).
io(132, commute, [x(0), cnot(1, 2)], true).
io(133, simplify, [[cnot(1, 2), x(1), cnot(1, 3), cnot(1, 2), cnot(2, 3), cnot(1, 0)]], [cnot(1, 2), x(1), cnot(1, 3), cnot(1, 2), cnot(2, 3), cnot(1, 0)]).
io(134, discover, [4, 10], found(0)).
io(135, commute, [cnot(0, 1), x(0)], false).
io(136, simplify, [[cnot(0, 1), x(1), cnot(0, 1), x(1)]], [cnot(0, 1), x(1), cnot(0, 1), x(1)]).
io(137, discover, [2, 7], found(0)).
io(138, commute, [x(0), cnot(0, 2)], false).
io(139, simplify, [[cnot(0, 1), x(1), x(1)]], [cnot(0, 1)]).
io(140, discover, [4, 22], found(0)).
io(141, commute, [x(1), cnot(2, 1)], false).
io(142, simplify, [[cnot(0, 1), x(0), x(1), cnot(1, 0), cnot(0, 1), cnot(0, 1), cnot(0, 1)]], [cnot(0, 1), x(0), x(1), cnot(1, 0), cnot(0, 1)]).
io(143, discover, [3, 5], found(2)).
io(144, commute, [cnot(1, 0), cnot(2, 0)], false).
io(145, simplify, [[x(1), cnot(1, 0), cnot(1, 0), cnot(1, 0)]], [x(1), cnot(1, 0)]).
io(146, discover, [4, 12], found(0)).
io(147, commute, [cnot(1, 0), cnot(1, 2)], false).
io(148, simplify, [[cnot(0, 1), cnot(2, 1), cnot(1, 2), cnot(1, 0)]], [cnot(0, 1), cnot(2, 1), cnot(1, 2), cnot(1, 0)]).
io(149, discover, [4, 20], found(0)).
io(150, commute, [cnot(0, 1), x(0)], false).
io(151, simplify, [[cnot(0, 2), cnot(2, 1), x(0)]], [cnot(0, 2), cnot(2, 1), x(0)]).
io(152, discover, [4, 13], found(0)).
io(153, commute, [cnot(1, 0), cnot(0, 1)], false).
io(154, simplify, [[cnot(0, 1), cnot(0, 1)]], []).
io(155, discover, [4, 19], found(0)).
io(156, commute, [x(2), x(0)], true).
io(157, simplify, [[cnot(3, 2), cnot(1, 2), cnot(2, 0), cnot(3, 1), cnot(0, 3), cnot(1, 2)]], [cnot(3, 2), cnot(1, 2), cnot(2, 0), cnot(3, 1), cnot(0, 3), cnot(1, 2)]).
io(158, discover, [4, 8], found(0)).
io(159, commute, [cnot(2, 1), cnot(1, 2)], false).
io(160, simplify, [[cnot(0, 1), cnot(2, 3), cnot(3, 2), x(2), x(1), cnot(3, 1), cnot(2, 3)]], [cnot(0, 1), cnot(2, 3), cnot(3, 2), x(2), x(1), cnot(3, 1), cnot(2, 3)]).
io(161, discover, [4, 10], found(0)).
io(162, commute, [cnot(1, 0), x(2)], true).
io(163, simplify, [[cnot(1, 0), x(1), cnot(2, 1), x(1)]], [cnot(1, 0), x(1), cnot(2, 1), x(1)]).
io(164, discover, [3, 8], found(2)).
io(165, commute, [x(0), cnot(0, 1)], false).
io(166, simplify, [[x(0), cnot(0, 2), cnot(0, 1), cnot(2, 1)]], [x(0), cnot(0, 2), cnot(0, 1), cnot(2, 1)]).
io(167, discover, [3, 19], found(2)).
io(168, commute, [cnot(1, 0), cnot(1, 2)], false).
io(169, simplify, [[x(0), x(1)]], [x(0), x(1)]).
io(170, discover, [3, 8], found(2)).
io(171, commute, [cnot(0, 1), cnot(1, 0)], false).
io(172, simplify, [[cnot(1, 0), cnot(0, 1), cnot(1, 0)]], [cnot(1, 0), cnot(0, 1), cnot(1, 0)]).
io(173, discover, [3, 15], found(2)).
io(174, commute, [cnot(2, 1), cnot(0, 2)], false).
io(175, simplify, [[x(2), cnot(1, 2), x(1), cnot(1, 0), cnot(2, 0), cnot(2, 0), x(1)]], [x(2), cnot(1, 2), x(1), cnot(1, 0), x(1)]).
io(176, discover, [2, 14], found(0)).
io(177, commute, [cnot(0, 2), x(0)], false).
io(178, simplify, [[cnot(1, 2), x(2), cnot(2, 0), cnot(3, 0), cnot(1, 2)]], [cnot(1, 2), x(2), cnot(2, 0), cnot(3, 0), cnot(1, 2)]).
io(179, discover, [3, 15], found(2)).
io(180, commute, [cnot(2, 0), cnot(2, 0)], false).
io(181, simplify, [[cnot(0, 2), x(1), cnot(1, 2), x(1), cnot(1, 0)]], [cnot(0, 2), x(1), cnot(1, 2), x(1), cnot(1, 0)]).
io(182, discover, [3, 8], found(2)).
io(183, commute, [x(0), cnot(2, 0)], false).
io(184, simplify, [[cnot(2, 1), cnot(1, 2), cnot(2, 0), cnot(1, 2), x(1), cnot(0, 1), cnot(1, 0)]], [cnot(2, 1), cnot(1, 2), cnot(2, 0), cnot(1, 2), x(1), cnot(0, 1), cnot(1, 0)]).
io(185, discover, [3, 23], found(2)).
io(186, commute, [x(1), cnot(0, 2)], true).
io(187, simplify, [[cnot(0, 1), cnot(0, 1), cnot(0, 1), cnot(0, 1), cnot(0, 1), cnot(1, 0), cnot(1, 0)]], [cnot(0, 1)]).
io(188, discover, [2, 25], found(0)).
io(189, commute, [cnot(1, 2), cnot(2, 0)], false).
io(190, simplify, [[cnot(2, 0), x(0)]], [cnot(2, 0), x(0)]).
io(191, discover, [3, 13], found(2)).
io(192, commute, [x(2), cnot(1, 2)], false).
io(193, simplify, [[]], []).
io(194, discover, [2, 5], found(0)).
io(195, commute, [cnot(2, 0), cnot(2, 1)], false).
io(196, simplify, [[cnot(1, 2), cnot(0, 2), cnot(2, 0)]], [cnot(1, 2), cnot(0, 2), cnot(2, 0)]).
io(197, discover, [4, 19], found(0)).
io(198, commute, [cnot(2, 1), x(2)], false).
io(199, simplify, [[x(3), x(3), x(0)]], [x(0)]).
io(200, discover, [4, 7], found(0)).

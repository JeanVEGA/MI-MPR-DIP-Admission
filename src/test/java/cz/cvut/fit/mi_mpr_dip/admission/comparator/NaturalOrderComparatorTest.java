package cz.cvut.fit.mi_mpr_dip.admission.comparator;

import static org.junit.Assert.assertArrayEquals;

import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.junit.Before;
import org.junit.Test;

public class NaturalOrderComparatorTest {

	private static final String[] FILE_LIST = new String[] { "z1.doc", "z10.doc", "z100.doc", "z101.doc", "z102.doc",
			"z11.doc", "z12.doc", "z13.doc", "z14.doc", "z15.doc", "z16.doc", "z17.doc", "z18.doc", "z19.doc",
			"z2.doc", "z20.doc", "z3.doc", "z4.doc", "z5.doc", "z6.doc", "z7.doc", "z8.doc", "z9.doc", "z1.2.doc",
			"z1.3.doc" };

	private static final String[] NAME_LIST = new String[] { "10X Radonius", "20X Radonius Prime", "20X Radonius",
			"30X Radonius", "40X Radonius", "200X Radonius", "10.4X Radonius", "20.5X Radonius",
			"20.2X Radonius Prime", "30.6X Radonius", "40.6X Radonius", "200X Radonius", "1000X Radonius Maximus",
			"Allegia 50 Clasteron", "Allegia 51 Clasteron", "Allegia 51B Clasteron", "Allegia 52 Clasteron",
			"Allegia 60 Clasteron", "Allegia 500 Clasteron", "Alpha 2", "Alpha 2A", "Alpha 2A-900", "Alpha 2A-8000",
			"Alpha 100", "Alpha 200", "Callisto Morphamax", "Callisto Morphamax 7000 SE",
			"Callisto Morphamax 7000 SE2", "Callisto Morphamax 500", "Callisto Morphamax 600",
			"Callisto Morphamax 700", "Callisto Morphamax 5000", "Callisto Morphamax 7000", "Callisto Morphamax 500.8",
			"Callisto Morphamax 600.3", "Callisto Morphamax 700.5", "Callisto Morphamax 5000.56",
			"Callisto Morphamax 7000.8", "QRS-60 Intrinsia Machine", "QRS-60F Intrinsia Machine",
			"QRS-62 Intrinsia Machine", "QRS-62F Intrinsia Machine", "Xiph Xlater 5", "Xiph Xlater 40",
			"Xiph Xlater 50", "Xiph Xlater 58", "Xiph Xlater 300", "Xiph Xlater 500", "Xiph Xlater 2000",
			"Xiph Xlater 5000", "Xiph Xlater 10000" };

	private Comparator<String> comparator;

	@Before
	public void setUp() {
		comparator = new NaturalOrderComparator<String>();
	}

	@Test
	public void testSortFiles() {
		assertArrayEquals(getSortedFiles(), getSorted(FILE_LIST));
	}

	private String[] getSortedFiles() {
		return new String[] { "z1.2.doc", "z1.3.doc", "z1.doc", "z2.doc", "z3.doc", "z4.doc", "z5.doc", "z6.doc",
				"z7.doc", "z8.doc", "z9.doc", "z10.doc", "z11.doc", "z12.doc", "z13.doc", "z14.doc", "z15.doc",
				"z16.doc", "z17.doc", "z18.doc", "z19.doc", "z20.doc", "z100.doc", "z101.doc", "z102.doc" };
	}

	@Test
	public void testSortNames() {
		assertArrayEquals(getSortedNames(), getSorted(NAME_LIST));
	}

	private String[] getSortedNames() {
		return new String[] { "10.4X Radonius", "10X Radonius", "20.2X Radonius Prime", "20.5X Radonius",
				"20X Radonius", "20X Radonius Prime", "30.6X Radonius", "30X Radonius", "40.6X Radonius",
				"40X Radonius", "200X Radonius", "200X Radonius", "1000X Radonius Maximus", "Allegia 50 Clasteron",
				"Allegia 51B Clasteron", "Allegia 51 Clasteron", "Allegia 52 Clasteron", "Allegia 60 Clasteron",
				"Allegia 500 Clasteron", "Alpha 2", "Alpha 2A", "Alpha 2A-900", "Alpha 2A-8000", "Alpha 100",
				"Alpha 200", "Callisto Morphamax", "Callisto Morphamax 500", "Callisto Morphamax 500.8",
				"Callisto Morphamax 600", "Callisto Morphamax 600.3", "Callisto Morphamax 700",
				"Callisto Morphamax 700.5", "Callisto Morphamax 5000", "Callisto Morphamax 5000.56",
				"Callisto Morphamax 7000", "Callisto Morphamax 7000.8", "Callisto Morphamax 7000 SE",
				"Callisto Morphamax 7000 SE2", "QRS-60F Intrinsia Machine", "QRS-60 Intrinsia Machine",
				"QRS-62F Intrinsia Machine", "QRS-62 Intrinsia Machine", "Xiph Xlater 5", "Xiph Xlater 40",
				"Xiph Xlater 50", "Xiph Xlater 58", "Xiph Xlater 300", "Xiph Xlater 500", "Xiph Xlater 2000",
				"Xiph Xlater 5000", "Xiph Xlater 10000" };
	}

	private String[] getSorted(String[] array) {
		List<String> list = Arrays.asList(array);
		Collections.sort(list, comparator);

		return list.toArray(new String[list.size()]);
	}

}

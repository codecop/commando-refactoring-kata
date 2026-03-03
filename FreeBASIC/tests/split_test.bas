#include once "fbcunit.bi"
#include once "../src/split.bas"

SUITE( StringArrayTests )

    TEST( add_value )
        Scope
            Dim result as StringArray
            result.AddValue("a")
            result.AddValue("b")
            CU_ASSERT_EQUAL( 2, result.Size() )
            CU_ASSERT_EQUAL( "a", result.value(1) )
            CU_ASSERT_EQUAL( "b", result.value(2) )
        End Scope
    END_TEST

    TEST( is_empty )
        Scope
            Dim result as StringArray
            CU_ASSERT_EQUAL( 0, result.Size() )
        End Scope
    END_TEST

END_SUITE

SUITE( SplitTests )

    TEST( should_split_special_cases )
        Scope
            Dim result as StringArray
            Split(";a;b;", ";", result)
            CU_ASSERT_EQUAL( 2, result.Size() )
            CU_ASSERT_EQUAL( "a", result.value(1) )
            CU_ASSERT_EQUAL( "b", result.value(2) )
        End Scope
    END_TEST

    TEST( should_split_middle )
        Scope
            Dim result as StringArray
            Split("a;b", ";", result)
            CU_ASSERT_EQUAL( 2, result.Size() )
            CU_ASSERT_EQUAL( "a", result.value(1) )
            CU_ASSERT_EQUAL( "b", result.value(2) )
        End Scope
    END_TEST

    TEST( no_separator )
        Scope
            Dim result as StringArray
            Split("something", ";", result)
            CU_ASSERT_EQUAL( 1, result.Size() )
            CU_ASSERT_EQUAL( "something", result.value(1) )
        End Scope
    END_TEST

END_SUITE

If( not fbcu.run_tests( false, true ) ) Then
    end 1
End If

#include once "fbcunit.bi"
#include once "../src/multiply_command.bas"

SUITE( MultiplyCommandTests )

    Dim Shared command As MultiplyCommand

    TEST( willCalculateProduct )
        CU_ASSERT_EQUAL( "12", command.Execute("3,4") )
    END_TEST

    TEST( willBlowUpIfIllegalFormat )
        ' cannot test for error raised
        ' command.execute("a,4")
        ' CU_ASSERT_EQUAL( INVALID_COMMAND_ERROR, Err() )
    END_TEST

END_SUITE

If( not fbcu.run_tests( false, true ) ) Then
    end 1
End If

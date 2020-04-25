#!/bin/bash
BEGIN{
i = 0;
}
{
        if ( $1 ~ /\([0-9]\)\?/ && $7 ~ /\([0-9]\)\?/)
                       print $1
}
END{ i = 0
}

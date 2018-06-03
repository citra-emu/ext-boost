#!/bin/bash

bcp \
    boost/container/flat_map.hpp \
    boost/container/flat_set.hpp \
    boost/container/small_vector.hpp \
    boost/container/static_vector.hpp \
    boost/crc.hpp \
    boost/icl/interval_map.hpp \
    boost/optional.hpp \
    boost/range/algorithm/ \
    boost/range/algorithm_ext/ \
    boost/smart_ptr/intrusive_ptr.hpp \
    boost/variant/ \
    --boost="$1" .


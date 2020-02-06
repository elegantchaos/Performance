// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 27/01/20.
//  All code (c) 2020 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

public struct Profiler {
    let start = clock_gettime_nsec_np(CLOCK_UPTIME_RAW)
    
    var elapsedNanoseconds: UInt {
        let finish = clock_gettime_nsec_np(CLOCK_UPTIME_RAW)
        return UInt(finish - start)
    }
    
    var elapsed: Double {
        let finish = clock_gettime_nsec_np(CLOCK_UPTIME_RAW)
        return Double(finish - start) / 1000000000.0
    }
}


public aspect TraceAspect_Maynard {
	
	pointcut classToTrace(): within(*App);
	
	pointcut methodToTrace(): classToTrace() && execution(String getName());
	
	before(): methodToTrace(){
		System.out.println("[BGN] " + thisJoinPointStaticPart.getSignature() + //
				", " + thisJoinPointStaticPart.getSourceLocation().getLine());
	}
	
	before(): methodToTrace(){
		System.out.println("[END] " + thisJoinPointStaticPart.getSourceLocation().getFileName());
	}
}

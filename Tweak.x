%hook NSConcreteAttributedString

- (id)initWithString:(NSString *)arg1 {

	if ([arg1 isKindOfClass:[NSString class]] && ![arg1 isEqualToString:@"Screen Mirroring"]) { // It flips out for some reason when you mess with "Screen Mirroring"
		arg1 = [arg1 lowercaseString];
	}

	return %orig(arg1);

}

%end

%hook UILabel

- (void)setText:(NSString *)arg1 {

	if ([arg1 isKindOfClass:[NSString class]] && ![arg1 isEqualToString:@"Screen Mirroring"]) { // It flips out for some reason when you mess with "Screen Mirroring"
		arg1 = [arg1 lowercaseString];
	}

	%orig(arg1);

}

%end

%hook SBIconLabelImageParameters

- (NSString *)text {

	return [%orig lowercaseString];

}

%end
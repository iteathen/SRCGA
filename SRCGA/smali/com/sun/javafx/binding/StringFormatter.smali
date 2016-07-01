.class public abstract Lcom/sun/javafx/binding/StringFormatter;
.super Ljavafx/beans/binding/StringBinding;
.source "StringFormatter.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/StringFormatter;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/StringBinding;-><init>()V

    return-void
.end method

.method static synthetic access$000([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "x0":[Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/binding/StringFormatter;->extractDependencies([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":[Ljava/lang/Object;
    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "x0":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/binding/StringFormatter;->extractValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljava/lang/Object;
    return-object v0
.end method

.method static synthetic access$200([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "x0":[Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/binding/StringFormatter;->extractValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":[Ljava/lang/Object;
    return-object v0
.end method

.method public static varargs concat([Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;
    .locals 10

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "args":[Ljava/lang/Object;
    move-object v6, v0

    if-eqz v6, :cond_0

    move-object v6, v0

    array-length v6, v6

    if-nez v6, :cond_1

    .line 99
    :cond_0
    const-string v6, ""

    invoke-static {v6}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v6

    move-object v0, v6

    .line 113
    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 101
    .restart local v0    # "args":[Ljava/lang/Object;
    :cond_1
    move-object v6, v0

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 102
    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v1, v6

    .line 103
    .local v1, "cur":Ljava/lang/Object;
    move-object v6, v1

    instance-of v6, v6, Ljavafx/beans/value/ObservableValue;

    if-eqz v6, :cond_2

    move-object v6, v1

    check-cast v6, Ljavafx/beans/value/ObservableValue;

    invoke-static {v6}, Lcom/sun/javafx/binding/StringFormatter;->convert(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/StringExpression;

    move-result-object v6

    .line 104
    :goto_1
    move-object v0, v6

    goto :goto_0

    .line 103
    :cond_2
    move-object v6, v1

    .line 104
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v6

    goto :goto_1

    .line 106
    .end local v1    # "cur":Ljava/lang/Object;
    :cond_3
    move-object v6, v0

    invoke-static {v6}, Lcom/sun/javafx/binding/StringFormatter;->extractDependencies([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_5

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v6

    .line 108
    .local v1, "builder":Ljava/lang/StringBuilder;
    move-object v6, v0

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_2
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_4

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 109
    .local v5, "obj":Ljava/lang/Object;
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 111
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_4
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 113
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v6, Lcom/sun/javafx/binding/StringFormatter$2;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/sun/javafx/binding/StringFormatter$2;-><init>([Ljava/lang/Object;)V

    move-object v0, v6

    goto :goto_0
.end method

.method public static convert(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/StringExpression;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;)",
            "Ljavafx/beans/binding/StringExpression;"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "observableValue":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "ObservableValue must be specified"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljavafx/beans/binding/StringExpression;

    if-eqz v1, :cond_1

    .line 70
    move-object v1, v0

    check-cast v1, Ljavafx/beans/binding/StringExpression;

    move-object v0, v1

    .line 72
    .end local v0    # "observableValue":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    :goto_0
    return-object v0

    .restart local v0    # "observableValue":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    :cond_1
    new-instance v1, Lcom/sun/javafx/binding/StringFormatter$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/binding/StringFormatter$1;-><init>(Ljavafx/beans/value/ObservableValue;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static varargs extractDependencies([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "args":[Ljava/lang/Object;
    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 57
    .local v1, "dependencies":Ljava/util/List;, "Ljava/util/List<Ljavafx/beans/value/ObservableValue<*>;>;"
    move-object v6, v0

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 58
    .local v5, "obj":Ljava/lang/Object;
    move-object v6, v5

    instance-of v6, v6, Ljavafx/beans/value/ObservableValue;

    if-eqz v6, :cond_0

    .line 59
    move-object v6, v1

    move-object v7, v5

    check-cast v7, Ljavafx/beans/value/ObservableValue;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 57
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_1
    move-object v6, v1

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljavafx/beans/value/ObservableValue;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljavafx/beans/value/ObservableValue;

    move-object v0, v6

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0
.end method

.method private static extractValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljavafx/beans/value/ObservableValue;

    invoke-interface {v1}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private static extractValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "objs":[Ljava/lang/Object;
    move-object v4, v0

    array-length v4, v4

    move v1, v4

    .line 48
    .local v1, "n":I
    move v4, v1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v2, v4

    .line 49
    .local v2, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 50
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    move v7, v3

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/sun/javafx/binding/StringFormatter;->extractValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "objs":[Ljava/lang/Object;
    return-object v0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;
    .locals 8

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "format":Ljava/lang/String;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 178
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Format cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 180
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/StringFormatter;->extractDependencies([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_1

    .line 181
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v3

    move-object v0, v3

    .line 208
    .end local v0    # "format":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 183
    .restart local v0    # "format":Ljava/lang/String;
    :cond_1
    new-instance v3, Lcom/sun/javafx/binding/StringFormatter$4;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/StringFormatter$4;-><init>([Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    .line 207
    .local v2, "formatter":Lcom/sun/javafx/binding/StringFormatter;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/binding/StringFormatter;->get()Ljava/lang/String;

    move-result-object v3

    .line 208
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public static varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;
    .locals 10

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "locale":Ljava/util/Locale;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 143
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Format cannot be null."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    :cond_0
    move-object v4, v2

    invoke-static {v4}, Lcom/sun/javafx/binding/StringFormatter;->extractDependencies([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_1

    .line 146
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v4

    move-object v0, v4

    .line 173
    .end local v0    # "locale":Ljava/util/Locale;
    :goto_0
    return-object v0

    .line 148
    .restart local v0    # "locale":Ljava/util/Locale;
    :cond_1
    new-instance v4, Lcom/sun/javafx/binding/StringFormatter$3;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/StringFormatter$3;-><init>([Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;)V

    move-object v3, v4

    .line 172
    .local v3, "formatter":Lcom/sun/javafx/binding/StringFormatter;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/binding/StringFormatter;->get()Ljava/lang/String;

    move-result-object v4

    .line 173
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

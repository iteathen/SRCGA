.class public Ljavafx/beans/binding/When;
.super Ljava/lang/Object;
.source "When.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/beans/binding/When$ObjectConditionBuilder;,
        Ljavafx/beans/binding/When$ObjectCondition;,
        Ljavafx/beans/binding/When$StringConditionBuilder;,
        Ljavafx/beans/binding/When$StringCondition;,
        Ljavafx/beans/binding/When$BooleanConditionBuilder;,
        Ljavafx/beans/binding/When$BooleanCondition;,
        Ljavafx/beans/binding/When$NumberConditionBuilder;,
        Ljavafx/beans/binding/When$WhenListener;
    }
.end annotation


# instance fields
.field private final condition:Ljavafx/beans/value/ObservableBooleanValue;


# direct methods
.method public constructor <init>(Ljavafx/beans/value/ObservableBooleanValue;)V
    .locals 6
    .param p1    # Ljavafx/beans/value/ObservableBooleanValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "condition"
        .end annotation
    .end param

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When;
    move-object v1, p1

    .local v1, "condition":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 74
    move-object v2, v1

    if-nez v2, :cond_0

    .line 75
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Condition must be specified."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/binding/When;->condition:Ljavafx/beans/value/ObservableBooleanValue;

    .line 78
    return-void
.end method

.method static synthetic access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/binding/When;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When;->condition:Ljavafx/beans/value/ObservableBooleanValue;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/beans/binding/When;
    return-object v0
.end method

.method static synthetic access$200(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 6

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v1, p1

    .local v1, "x1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, p2

    .local v2, "x2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/When;->createNumberCondition(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "x0":Ljavafx/beans/value/ObservableBooleanValue;
    return-object v0
.end method

.method private static createNumberCondition(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "condition":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v1, p1

    .local v1, "thenValue":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, p2

    .local v2, "otherwiseValue":Ljavafx/beans/value/ObservableNumberValue;
    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableDoubleValue;

    if-nez v3, :cond_0

    move-object v3, v2

    instance-of v3, v3, Ljavafx/beans/value/ObservableDoubleValue;

    if-eqz v3, :cond_1

    .line 122
    :cond_0
    new-instance v3, Ljavafx/beans/binding/When$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/When$1;-><init>(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    .line 212
    .end local v0    # "condition":Ljavafx/beans/value/ObservableBooleanValue;
    :goto_0
    return-object v0

    .line 151
    .restart local v0    # "condition":Ljavafx/beans/value/ObservableBooleanValue;
    :cond_1
    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableFloatValue;

    if-nez v3, :cond_2

    move-object v3, v2

    instance-of v3, v3, Ljavafx/beans/value/ObservableFloatValue;

    if-eqz v3, :cond_3

    .line 152
    :cond_2
    new-instance v3, Ljavafx/beans/binding/When$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/When$2;-><init>(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0

    .line 181
    :cond_3
    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableLongValue;

    if-nez v3, :cond_4

    move-object v3, v2

    instance-of v3, v3, Ljavafx/beans/value/ObservableLongValue;

    if-eqz v3, :cond_5

    .line 182
    :cond_4
    new-instance v3, Ljavafx/beans/binding/When$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/When$3;-><init>(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0

    .line 212
    :cond_5
    new-instance v3, Ljavafx/beans/binding/When$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/When$4;-><init>(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public then(Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/When$BooleanConditionBuilder;
    .locals 8

    .prologue
    .line 536
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When;
    move-object v1, p1

    .local v1, "thenValue":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 537
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "Value needs to be specified"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 539
    :cond_0
    new-instance v2, Ljavafx/beans/binding/When$BooleanConditionBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/binding/When$BooleanConditionBuilder;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/binding/When$1;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/When;
    return-object v0
.end method

.method public then(Z)Ljavafx/beans/binding/When$BooleanConditionBuilder;
    .locals 8

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When;
    move v1, p1

    .local v1, "thenValue":Z
    new-instance v2, Ljavafx/beans/binding/When$BooleanConditionBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/binding/When$BooleanConditionBuilder;-><init>(Ljavafx/beans/binding/When;ZLjavafx/beans/binding/When$1;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/When;
    return-object v0
.end method

.method public then(D)Ljavafx/beans/binding/When$NumberConditionBuilder;
    .locals 9

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When;
    move-wide v1, p1

    .local v1, "thenValue":D
    new-instance v3, Ljavafx/beans/binding/When$NumberConditionBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-wide v6, v1

    invoke-static {v6, v7}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/When$NumberConditionBuilder;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/binding/When$1;)V

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/When;
    return-object v0
.end method

.method public then(F)Ljavafx/beans/binding/When$NumberConditionBuilder;
    .locals 8

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When;
    move v1, p1

    .local v1, "thenValue":F
    new-instance v2, Ljavafx/beans/binding/When$NumberConditionBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move v5, v1

    invoke-static {v5}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/binding/When$NumberConditionBuilder;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/binding/When$1;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/When;
    return-object v0
.end method

.method public then(I)Ljavafx/beans/binding/When$NumberConditionBuilder;
    .locals 8

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When;
    move v1, p1

    .local v1, "thenValue":I
    new-instance v2, Ljavafx/beans/binding/When$NumberConditionBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move v5, v1

    invoke-static {v5}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/binding/When$NumberConditionBuilder;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/binding/When$1;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/When;
    return-object v0
.end method

.method public then(J)Ljavafx/beans/binding/When$NumberConditionBuilder;
    .locals 9

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When;
    move-wide v1, p1

    .local v1, "thenValue":J
    new-instance v3, Ljavafx/beans/binding/When$NumberConditionBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-wide v6, v1

    invoke-static {v6, v7}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/When$NumberConditionBuilder;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/binding/When$1;)V

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/When;
    return-object v0
.end method

.method public then(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/When$NumberConditionBuilder;
    .locals 8

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When;
    move-object v1, p1

    .local v1, "thenValue":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 331
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "Value needs to be specified"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    :cond_0
    new-instance v2, Ljavafx/beans/binding/When$NumberConditionBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/binding/When$NumberConditionBuilder;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/binding/When$1;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/When;
    return-object v0
.end method

.method public then(Ljava/lang/Object;)Ljavafx/beans/binding/When$ObjectConditionBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljavafx/beans/binding/When$ObjectConditionBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 892
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When;
    move-object v1, p1

    .local v1, "thenValue":Ljava/lang/Object;, "TT;"
    new-instance v2, Ljavafx/beans/binding/When$ObjectConditionBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/binding/When$ObjectConditionBuilder;-><init>(Ljavafx/beans/binding/When;Ljava/lang/Object;Ljavafx/beans/binding/When$1;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/When;
    return-object v0
.end method

.method public then(Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/When$ObjectConditionBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<TT;>;)",
            "Ljavafx/beans/binding/When$ObjectConditionBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 877
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When;
    move-object v1, p1

    .local v1, "thenValue":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 878
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "Value needs to be specified"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 880
    :cond_0
    new-instance v2, Ljavafx/beans/binding/When$ObjectConditionBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/binding/When$ObjectConditionBuilder;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/binding/When$1;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/When;
    return-object v0
.end method

.method public then(Ljava/lang/String;)Ljavafx/beans/binding/When$StringConditionBuilder;
    .locals 8

    .prologue
    .line 720
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When;
    move-object v1, p1

    .local v1, "thenValue":Ljava/lang/String;
    new-instance v2, Ljavafx/beans/binding/When$StringConditionBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/binding/When$StringConditionBuilder;-><init>(Ljavafx/beans/binding/When;Ljava/lang/String;Ljavafx/beans/binding/When$1;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/When;
    return-object v0
.end method

.method public then(Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/When$StringConditionBuilder;
    .locals 8

    .prologue
    .line 705
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When;
    move-object v1, p1

    .local v1, "thenValue":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 706
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "Value needs to be specified"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 708
    :cond_0
    new-instance v2, Ljavafx/beans/binding/When$StringConditionBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/binding/When$StringConditionBuilder;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/binding/When$1;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/When;
    return-object v0
.end method

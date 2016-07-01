.class public Ljavafx/beans/binding/When$NumberConditionBuilder;
.super Ljava/lang/Object;
.source "When.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/binding/When;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NumberConditionBuilder"
.end annotation


# instance fields
.field private thenValue:Ljavafx/beans/value/ObservableNumberValue;

.field final synthetic this$0:Ljavafx/beans/binding/When;


# direct methods
.method private constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableNumberValue;)V
    .locals 5

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$NumberConditionBuilder;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "thenValue":Ljavafx/beans/value/ObservableNumberValue;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/binding/When$NumberConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 253
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/beans/binding/When$NumberConditionBuilder;->thenValue:Ljavafx/beans/value/ObservableNumberValue;

    .line 254
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/binding/When$1;)V
    .locals 7

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$NumberConditionBuilder;
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/binding/When$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/binding/When$NumberConditionBuilder;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableNumberValue;)V

    return-void
.end method


# virtual methods
.method public otherwise(D)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$NumberConditionBuilder;
    move-wide v1, p1

    .local v1, "otherwiseValue":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/binding/When$NumberConditionBuilder;->otherwise(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/When$NumberConditionBuilder;
    return-object v0
.end method

.method public otherwise(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$NumberConditionBuilder;
    move v1, p1

    .local v1, "otherwiseValue":F
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/When$NumberConditionBuilder;->otherwise(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/When$NumberConditionBuilder;
    return-object v0
.end method

.method public otherwise(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$NumberConditionBuilder;
    move v1, p1

    .local v1, "otherwiseValue":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/When$NumberConditionBuilder;->otherwise(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/When$NumberConditionBuilder;
    return-object v0
.end method

.method public otherwise(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$NumberConditionBuilder;
    move-wide v1, p1

    .local v1, "otherwiseValue":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/binding/When$NumberConditionBuilder;->otherwise(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/When$NumberConditionBuilder;
    return-object v0
.end method

.method public otherwise(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 6

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$NumberConditionBuilder;
    move-object v1, p1

    .local v1, "otherwiseValue":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 267
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Value needs to be specified"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$NumberConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    invoke-static {v2}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/When$NumberConditionBuilder;->thenValue:Ljavafx/beans/value/ObservableNumberValue;

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/When;->access$200(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/When$NumberConditionBuilder;
    return-object v0
.end method

.class public Ljavafx/beans/binding/When$StringConditionBuilder;
.super Ljava/lang/Object;
.source "When.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/binding/When;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StringConditionBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/beans/binding/When;

.field private trueResult:Ljavafx/beans/value/ObservableStringValue;

.field private trueResultValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljavafx/beans/binding/When;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 660
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$StringConditionBuilder;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "thenValue":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/binding/When$StringConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 661
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/beans/binding/When$StringConditionBuilder;->trueResultValue:Ljava/lang/String;

    .line 662
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/When;Ljava/lang/String;Ljavafx/beans/binding/When$1;)V
    .locals 7

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$StringConditionBuilder;
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/binding/When$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/binding/When$StringConditionBuilder;-><init>(Ljavafx/beans/binding/When;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableStringValue;)V
    .locals 5

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$StringConditionBuilder;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "thenValue":Ljavafx/beans/value/ObservableStringValue;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/binding/When$StringConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 657
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/beans/binding/When$StringConditionBuilder;->trueResult:Ljavafx/beans/value/ObservableStringValue;

    .line 658
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/binding/When$1;)V
    .locals 7

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$StringConditionBuilder;
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ObservableStringValue;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/binding/When$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/binding/When$StringConditionBuilder;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableStringValue;)V

    return-void
.end method


# virtual methods
.method public otherwise(Ljava/lang/String;)Ljavafx/beans/binding/StringBinding;
    .locals 9

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$StringConditionBuilder;
    move-object v1, p1

    .local v1, "otherwiseValue":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$StringConditionBuilder;->trueResult:Ljavafx/beans/value/ObservableStringValue;

    if-eqz v2, :cond_0

    .line 690
    new-instance v2, Ljavafx/beans/binding/When$StringCondition;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/When$StringConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$StringConditionBuilder;->trueResult:Ljavafx/beans/value/ObservableStringValue;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/binding/When$StringCondition;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;Ljavafx/beans/binding/When$1;)V

    move-object v0, v2

    .line 692
    .end local v0    # "this":Ljavafx/beans/binding/When$StringConditionBuilder;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/When$StringConditionBuilder;
    :cond_0
    new-instance v2, Ljavafx/beans/binding/When$StringCondition;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/When$StringConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$StringConditionBuilder;->trueResultValue:Ljava/lang/String;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/binding/When$StringCondition;-><init>(Ljavafx/beans/binding/When;Ljava/lang/String;Ljava/lang/String;Ljavafx/beans/binding/When$1;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public otherwise(Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/StringBinding;
    .locals 9

    .prologue
    .line 674
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$StringConditionBuilder;
    move-object v1, p1

    .local v1, "otherwiseValue":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$StringConditionBuilder;->trueResult:Ljavafx/beans/value/ObservableStringValue;

    if-eqz v2, :cond_0

    .line 675
    new-instance v2, Ljavafx/beans/binding/When$StringCondition;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/When$StringConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$StringConditionBuilder;->trueResult:Ljavafx/beans/value/ObservableStringValue;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/binding/When$StringCondition;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/binding/When$1;)V

    move-object v0, v2

    .line 677
    .end local v0    # "this":Ljavafx/beans/binding/When$StringConditionBuilder;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/When$StringConditionBuilder;
    :cond_0
    new-instance v2, Ljavafx/beans/binding/When$StringCondition;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/When$StringConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$StringConditionBuilder;->trueResultValue:Ljava/lang/String;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/binding/When$StringCondition;-><init>(Ljavafx/beans/binding/When;Ljava/lang/String;Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/binding/When$1;)V

    move-object v0, v2

    goto :goto_0
.end method

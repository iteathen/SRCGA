.class public Ljavafx/beans/binding/When$BooleanConditionBuilder;
.super Ljava/lang/Object;
.source "When.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/binding/When;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BooleanConditionBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/beans/binding/When;

.field private trueResult:Ljavafx/beans/value/ObservableBooleanValue;

.field private trueResultValue:Z


# direct methods
.method private constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableBooleanValue;)V
    .locals 5

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$BooleanConditionBuilder;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "thenValue":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/binding/When$BooleanConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 485
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/beans/binding/When$BooleanConditionBuilder;->trueResult:Ljavafx/beans/value/ObservableBooleanValue;

    .line 486
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/binding/When$1;)V
    .locals 7

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$BooleanConditionBuilder;
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/binding/When$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/binding/When$BooleanConditionBuilder;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableBooleanValue;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/binding/When;Z)V
    .locals 5

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$BooleanConditionBuilder;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/beans/binding/When;
    move v2, p2

    .local v2, "thenValue":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/binding/When$BooleanConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 489
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Ljavafx/beans/binding/When$BooleanConditionBuilder;->trueResultValue:Z

    .line 490
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/When;ZLjavafx/beans/binding/When$1;)V
    .locals 7

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$BooleanConditionBuilder;
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/When;
    move v2, p2

    .local v2, "x1":Z
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/binding/When$1;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/binding/When$BooleanConditionBuilder;-><init>(Ljavafx/beans/binding/When;Z)V

    return-void
.end method


# virtual methods
.method public otherwise(Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 502
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$BooleanConditionBuilder;
    move-object v1, p1

    .local v1, "otherwiseValue":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 503
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "Value needs to be specified"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 505
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$BooleanConditionBuilder;->trueResult:Ljavafx/beans/value/ObservableBooleanValue;

    if-eqz v2, :cond_1

    .line 506
    new-instance v2, Ljavafx/beans/binding/When$BooleanCondition;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/When$BooleanConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$BooleanConditionBuilder;->trueResult:Ljavafx/beans/value/ObservableBooleanValue;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/binding/When$BooleanCondition;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/binding/When$1;)V

    move-object v0, v2

    .line 508
    .end local v0    # "this":Ljavafx/beans/binding/When$BooleanConditionBuilder;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/When$BooleanConditionBuilder;
    :cond_1
    new-instance v2, Ljavafx/beans/binding/When$BooleanCondition;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/When$BooleanConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/beans/binding/When$BooleanConditionBuilder;->trueResultValue:Z

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/binding/When$BooleanCondition;-><init>(Ljavafx/beans/binding/When;ZLjavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/binding/When$1;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public otherwise(Z)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$BooleanConditionBuilder;
    move v1, p1

    .local v1, "otherwiseValue":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$BooleanConditionBuilder;->trueResult:Ljavafx/beans/value/ObservableBooleanValue;

    if-eqz v2, :cond_0

    .line 521
    new-instance v2, Ljavafx/beans/binding/When$BooleanCondition;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/When$BooleanConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$BooleanConditionBuilder;->trueResult:Ljavafx/beans/value/ObservableBooleanValue;

    move v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/binding/When$BooleanCondition;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableBooleanValue;ZLjavafx/beans/binding/When$1;)V

    move-object v0, v2

    .line 523
    .end local v0    # "this":Ljavafx/beans/binding/When$BooleanConditionBuilder;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/When$BooleanConditionBuilder;
    :cond_0
    new-instance v2, Ljavafx/beans/binding/When$BooleanCondition;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/When$BooleanConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/beans/binding/When$BooleanConditionBuilder;->trueResultValue:Z

    move v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/binding/When$BooleanCondition;-><init>(Ljavafx/beans/binding/When;ZZLjavafx/beans/binding/When$1;)V

    move-object v0, v2

    goto :goto_0
.end method

.class public Ljavafx/beans/binding/When$ObjectConditionBuilder;
.super Ljava/lang/Object;
.source "When.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/binding/When;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObjectConditionBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/beans/binding/When;

.field private trueResult:Ljavafx/beans/value/ObservableObjectValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableObjectValue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private trueResultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/beans/binding/When;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 829
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$ObjectConditionBuilder;, "Ljavafx/beans/binding/When$ObjectConditionBuilder<TT;>;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "thenValue":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/binding/When$ObjectConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 830
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/beans/binding/When$ObjectConditionBuilder;->trueResultValue:Ljava/lang/Object;

    .line 831
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/When;Ljava/lang/Object;Ljavafx/beans/binding/When$1;)V
    .locals 7

    .prologue
    .line 820
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$ObjectConditionBuilder;, "Ljavafx/beans/binding/When$ObjectConditionBuilder<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/binding/When$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/binding/When$ObjectConditionBuilder;-><init>(Ljavafx/beans/binding/When;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableObjectValue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$ObjectConditionBuilder;, "Ljavafx/beans/binding/When$ObjectConditionBuilder<TT;>;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "thenValue":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<TT;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/binding/When$ObjectConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 826
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/beans/binding/When$ObjectConditionBuilder;->trueResult:Ljavafx/beans/value/ObservableObjectValue;

    .line 827
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/binding/When$1;)V
    .locals 7

    .prologue
    .line 820
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$ObjectConditionBuilder;, "Ljavafx/beans/binding/When$ObjectConditionBuilder<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ObservableObjectValue;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/binding/When$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/binding/When$ObjectConditionBuilder;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableObjectValue;)V

    return-void
.end method


# virtual methods
.method public otherwise(Ljava/lang/Object;)Ljavafx/beans/binding/ObjectBinding;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljavafx/beans/binding/ObjectBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 861
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$ObjectConditionBuilder;, "Ljavafx/beans/binding/When$ObjectConditionBuilder<TT;>;"
    move-object v1, p1

    .local v1, "otherwiseValue":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$ObjectConditionBuilder;->trueResult:Ljavafx/beans/value/ObservableObjectValue;

    if-eqz v2, :cond_0

    .line 862
    new-instance v2, Ljavafx/beans/binding/When$ObjectCondition;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/When$ObjectConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$ObjectConditionBuilder;->trueResult:Ljavafx/beans/value/ObservableObjectValue;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/binding/When$ObjectCondition;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableObjectValue;Ljava/lang/Object;Ljavafx/beans/binding/When$1;)V

    move-object v0, v2

    .line 864
    .end local v0    # "this":Ljavafx/beans/binding/When$ObjectConditionBuilder;, "Ljavafx/beans/binding/When$ObjectConditionBuilder<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/When$ObjectConditionBuilder;, "Ljavafx/beans/binding/When$ObjectConditionBuilder<TT;>;"
    :cond_0
    new-instance v2, Ljavafx/beans/binding/When$ObjectCondition;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/When$ObjectConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$ObjectConditionBuilder;->trueResultValue:Ljava/lang/Object;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/binding/When$ObjectCondition;-><init>(Ljavafx/beans/binding/When;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/beans/binding/When$1;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public otherwise(Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/ObjectBinding;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<TT;>;)",
            "Ljavafx/beans/binding/ObjectBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 843
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$ObjectConditionBuilder;, "Ljavafx/beans/binding/When$ObjectConditionBuilder<TT;>;"
    move-object v1, p1

    .local v1, "otherwiseValue":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 844
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "Value needs to be specified"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 846
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$ObjectConditionBuilder;->trueResult:Ljavafx/beans/value/ObservableObjectValue;

    if-eqz v2, :cond_1

    .line 847
    new-instance v2, Ljavafx/beans/binding/When$ObjectCondition;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/When$ObjectConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$ObjectConditionBuilder;->trueResult:Ljavafx/beans/value/ObservableObjectValue;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/binding/When$ObjectCondition;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/binding/When$1;)V

    move-object v0, v2

    .line 849
    .end local v0    # "this":Ljavafx/beans/binding/When$ObjectConditionBuilder;, "Ljavafx/beans/binding/When$ObjectConditionBuilder<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/When$ObjectConditionBuilder;, "Ljavafx/beans/binding/When$ObjectConditionBuilder<TT;>;"
    :cond_1
    new-instance v2, Ljavafx/beans/binding/When$ObjectCondition;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/When$ObjectConditionBuilder;->this$0:Ljavafx/beans/binding/When;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$ObjectConditionBuilder;->trueResultValue:Ljava/lang/Object;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/binding/When$ObjectCondition;-><init>(Ljavafx/beans/binding/When;Ljava/lang/Object;Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/binding/When$1;)V

    move-object v0, v2

    goto :goto_0
.end method

.class Ljavafx/beans/binding/When$ObjectCondition;
.super Ljavafx/beans/binding/ObjectBinding;
.source "When.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/binding/When;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObjectCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/binding/ObjectBinding",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final falseResult:Ljavafx/beans/value/ObservableObjectValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableObjectValue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final falseResultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final observer:Ljavafx/beans/InvalidationListener;

.field final synthetic this$0:Ljavafx/beans/binding/When;

.field private final trueResult:Ljavafx/beans/value/ObservableObjectValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableObjectValue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final trueResultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 726
    const-class v0, Ljavafx/beans/binding/When;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/beans/binding/When$ObjectCondition;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavafx/beans/binding/When;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 767
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$ObjectCondition;, "Ljavafx/beans/binding/When$ObjectCondition<TT;>;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "then":Ljava/lang/Object;, "TT;"
    move-object v3, p3

    .local v3, "otherwise":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->this$0:Ljavafx/beans/binding/When;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/binding/ObjectBinding;-><init>()V

    .line 768
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->trueResult:Ljavafx/beans/value/ObservableObjectValue;

    .line 769
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->trueResultValue:Ljava/lang/Object;

    .line 770
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->falseResult:Ljavafx/beans/value/ObservableObjectValue;

    .line 771
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->falseResultValue:Ljava/lang/Object;

    .line 772
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->observer:Ljavafx/beans/InvalidationListener;

    .line 773
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    invoke-static {v8}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-super {v4, v5}, Ljavafx/beans/binding/ObjectBinding;->bind([Ljavafx/beans/Observable;)V

    .line 774
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/When;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/beans/binding/When$1;)V
    .locals 9

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$ObjectCondition;, "Ljavafx/beans/binding/When$ObjectCondition<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x2":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "x3":Ljavafx/beans/binding/When$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/binding/When$ObjectCondition;-><init>(Ljavafx/beans/binding/When;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/binding/When;Ljava/lang/Object;Ljavafx/beans/value/ObservableObjectValue;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 747
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$ObjectCondition;, "Ljavafx/beans/binding/When$ObjectCondition<TT;>;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "then":Ljava/lang/Object;, "TT;"
    move-object/from16 v3, p3

    .local v3, "otherwise":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<TT;>;"
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->this$0:Ljavafx/beans/binding/When;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/binding/ObjectBinding;-><init>()V

    .line 748
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->trueResult:Ljavafx/beans/value/ObservableObjectValue;

    .line 749
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->trueResultValue:Ljava/lang/Object;

    .line 750
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->falseResult:Ljavafx/beans/value/ObservableObjectValue;

    .line 751
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->falseResultValue:Ljava/lang/Object;

    .line 752
    move-object v4, v0

    new-instance v5, Ljavafx/beans/binding/When$WhenListener;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move-object v8, v1

    invoke-static {v8}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v8

    const/4 v9, 0x0

    move-object v10, v3

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Ljavafx/beans/binding/When$WhenListener;-><init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/binding/When$1;)V

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->observer:Ljavafx/beans/InvalidationListener;

    .line 753
    move-object v4, v1

    invoke-static {v4}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$ObjectCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableBooleanValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 754
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$ObjectCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableObjectValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 755
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/When;Ljava/lang/Object;Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/binding/When$1;)V
    .locals 9

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$ObjectCondition;, "Ljavafx/beans/binding/When$ObjectCondition<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/value/ObservableObjectValue;
    move-object v4, p4

    .local v4, "x3":Ljavafx/beans/binding/When$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/binding/When$ObjectCondition;-><init>(Ljavafx/beans/binding/When;Ljava/lang/Object;Ljavafx/beans/value/ObservableObjectValue;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableObjectValue;Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 757
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$ObjectCondition;, "Ljavafx/beans/binding/When$ObjectCondition<TT;>;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "then":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<TT;>;"
    move-object/from16 v3, p3

    .local v3, "otherwise":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->this$0:Ljavafx/beans/binding/When;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/binding/ObjectBinding;-><init>()V

    .line 758
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->trueResult:Ljavafx/beans/value/ObservableObjectValue;

    .line 759
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->trueResultValue:Ljava/lang/Object;

    .line 760
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->falseResult:Ljavafx/beans/value/ObservableObjectValue;

    .line 761
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->falseResultValue:Ljava/lang/Object;

    .line 762
    move-object v4, v0

    new-instance v5, Ljavafx/beans/binding/When$WhenListener;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move-object v8, v1

    invoke-static {v8}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v8

    move-object v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Ljavafx/beans/binding/When$WhenListener;-><init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/binding/When$1;)V

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->observer:Ljavafx/beans/InvalidationListener;

    .line 763
    move-object v4, v1

    invoke-static {v4}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$ObjectCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableBooleanValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 764
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$ObjectCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableObjectValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 765
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableObjectValue;Ljava/lang/Object;Ljavafx/beans/binding/When$1;)V
    .locals 9

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$ObjectCondition;, "Ljavafx/beans/binding/When$ObjectCondition<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ObservableObjectValue;
    move-object v3, p3

    .local v3, "x2":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "x3":Ljavafx/beans/binding/When$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/binding/When$ObjectCondition;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableObjectValue;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<TT;>;",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 736
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$ObjectCondition;, "Ljavafx/beans/binding/When$ObjectCondition<TT;>;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "then":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<TT;>;"
    move-object/from16 v3, p3

    .local v3, "otherwise":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<TT;>;"
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->this$0:Ljavafx/beans/binding/When;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/binding/ObjectBinding;-><init>()V

    .line 737
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->trueResult:Ljavafx/beans/value/ObservableObjectValue;

    .line 738
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->trueResultValue:Ljava/lang/Object;

    .line 739
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->falseResult:Ljavafx/beans/value/ObservableObjectValue;

    .line 740
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->falseResultValue:Ljava/lang/Object;

    .line 741
    move-object v4, v0

    new-instance v5, Ljavafx/beans/binding/When$WhenListener;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move-object v8, v1

    invoke-static {v8}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v8

    move-object v9, v2

    move-object v10, v3

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Ljavafx/beans/binding/When$WhenListener;-><init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/binding/When$1;)V

    iput-object v5, v4, Ljavafx/beans/binding/When$ObjectCondition;->observer:Ljavafx/beans/InvalidationListener;

    .line 742
    move-object v4, v1

    invoke-static {v4}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$ObjectCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableBooleanValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 743
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$ObjectCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableObjectValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 744
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$ObjectCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableObjectValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 745
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/binding/When$1;)V
    .locals 9

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$ObjectCondition;, "Ljavafx/beans/binding/When$ObjectCondition<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ObservableObjectValue;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/value/ObservableObjectValue;
    move-object v4, p4

    .local v4, "x3":Ljavafx/beans/binding/When$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/binding/When$ObjectCondition;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;)V

    return-void
.end method


# virtual methods
.method protected computeValue()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 778
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$ObjectCondition;, "Ljavafx/beans/binding/When$ObjectCondition<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$ObjectCondition;->this$0:Ljavafx/beans/binding/When;

    invoke-static {v2}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v2

    move v1, v2

    .line 779
    .local v1, "conditionValue":Z
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Condition of ternary binding expression was evaluated: {0}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$ObjectCondition;->trueResult:Ljavafx/beans/value/ObservableObjectValue;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$ObjectCondition;->trueResult:Ljavafx/beans/value/ObservableObjectValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableObjectValue;->get()Ljava/lang/Object;

    move-result-object v2

    .line 781
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/When$ObjectCondition;, "Ljavafx/beans/binding/When$ObjectCondition<TT;>;"
    return-object v0

    .line 780
    .restart local v0    # "this":Ljavafx/beans/binding/When$ObjectCondition;, "Ljavafx/beans/binding/When$ObjectCondition<TT;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$ObjectCondition;->trueResultValue:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$ObjectCondition;->falseResult:Ljavafx/beans/value/ObservableObjectValue;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$ObjectCondition;->falseResult:Ljavafx/beans/value/ObservableObjectValue;

    .line 781
    invoke-interface {v2}, Ljavafx/beans/value/ObservableObjectValue;->get()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$ObjectCondition;->falseResultValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 786
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$ObjectCondition;, "Ljavafx/beans/binding/When$ObjectCondition<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$ObjectCondition;->observer:Ljavafx/beans/InvalidationListener;

    if-nez v1, :cond_1

    .line 787
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavafx/beans/Observable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$ObjectCondition;->this$0:Ljavafx/beans/binding/When;

    invoke-static {v5}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-super {v1, v2}, Ljavafx/beans/binding/ObjectBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$ObjectCondition;->this$0:Ljavafx/beans/binding/When;

    invoke-static {v1}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$ObjectCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableBooleanValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 790
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$ObjectCondition;->trueResult:Ljavafx/beans/value/ObservableObjectValue;

    if-eqz v1, :cond_2

    .line 791
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$ObjectCondition;->trueResult:Ljavafx/beans/value/ObservableObjectValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$ObjectCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableObjectValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 793
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$ObjectCondition;->falseResult:Ljavafx/beans/value/ObservableObjectValue;

    if-eqz v1, :cond_0

    .line 794
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$ObjectCondition;->falseResult:Ljavafx/beans/value/ObservableObjectValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$ObjectCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableObjectValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    goto :goto_0
.end method

.method public getDependencies()Ljavafx/collections/ObservableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 803
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$ObjectCondition;, "Ljavafx/beans/binding/When$ObjectCondition<TT;>;"
    sget-boolean v2, Ljavafx/beans/binding/When$ObjectCondition;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$ObjectCondition;->this$0:Ljavafx/beans/binding/When;

    invoke-static {v2}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 804
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljavafx/beans/value/ObservableValue;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$ObjectCondition;->this$0:Ljavafx/beans/binding/When;

    invoke-static {v5}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2}, Ljavafx/collections/FXCollections;->observableArrayList([Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v1, v2

    .line 805
    .local v1, "seq":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/beans/value/ObservableValue<*>;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$ObjectCondition;->trueResult:Ljavafx/beans/value/ObservableObjectValue;

    if-eqz v2, :cond_1

    .line 806
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/When$ObjectCondition;->trueResult:Ljavafx/beans/value/ObservableObjectValue;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 808
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$ObjectCondition;->falseResult:Ljavafx/beans/value/ObservableObjectValue;

    if-eqz v2, :cond_2

    .line 809
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/When$ObjectCondition;->falseResult:Ljavafx/beans/value/ObservableObjectValue;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 811
    :cond_2
    move-object v2, v1

    invoke-static {v2}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/When$ObjectCondition;, "Ljavafx/beans/binding/When$ObjectCondition<TT;>;"
    return-object v0
.end method

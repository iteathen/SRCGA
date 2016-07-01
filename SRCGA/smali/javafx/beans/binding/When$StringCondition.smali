.class Ljavafx/beans/binding/When$StringCondition;
.super Ljavafx/beans/binding/StringBinding;
.source "When.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/binding/When;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StringCondition"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final falseResult:Ljavafx/beans/value/ObservableStringValue;

.field private final falseResultValue:Ljava/lang/String;

.field private final observer:Ljavafx/beans/InvalidationListener;

.field final synthetic this$0:Ljavafx/beans/binding/When;

.field private final trueResult:Ljavafx/beans/value/ObservableStringValue;

.field private final trueResultValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 557
    const-class v0, Ljavafx/beans/binding/When;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/beans/binding/When$StringCondition;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavafx/beans/binding/When;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$StringCondition;
    move-object v1, p1

    move-object v2, p2

    .local v2, "then":Ljava/lang/String;
    move-object v3, p3

    .local v3, "otherwise":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->this$0:Ljavafx/beans/binding/When;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/binding/StringBinding;-><init>()V

    .line 599
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->trueResult:Ljavafx/beans/value/ObservableStringValue;

    .line 600
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->trueResultValue:Ljava/lang/String;

    .line 601
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->falseResult:Ljavafx/beans/value/ObservableStringValue;

    .line 602
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->falseResultValue:Ljava/lang/String;

    .line 603
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->observer:Ljavafx/beans/InvalidationListener;

    .line 604
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

    invoke-super {v4, v5}, Ljavafx/beans/binding/StringBinding;->bind([Ljavafx/beans/Observable;)V

    .line 605
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/When;Ljava/lang/String;Ljava/lang/String;Ljavafx/beans/binding/When$1;)V
    .locals 9

    .prologue
    .line 557
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$StringCondition;
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object v3, p3

    .local v3, "x2":Ljava/lang/String;
    move-object v4, p4

    .local v4, "x3":Ljavafx/beans/binding/When$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/binding/When$StringCondition;-><init>(Ljavafx/beans/binding/When;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/binding/When;Ljava/lang/String;Ljavafx/beans/value/ObservableStringValue;)V
    .locals 13

    .prologue
    .line 578
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$StringCondition;
    move-object v1, p1

    move-object v2, p2

    .local v2, "then":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "otherwise":Ljavafx/beans/value/ObservableStringValue;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->this$0:Ljavafx/beans/binding/When;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/binding/StringBinding;-><init>()V

    .line 579
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->trueResult:Ljavafx/beans/value/ObservableStringValue;

    .line 580
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->trueResultValue:Ljava/lang/String;

    .line 581
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->falseResult:Ljavafx/beans/value/ObservableStringValue;

    .line 582
    move-object v4, v0

    const-string v5, ""

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->falseResultValue:Ljava/lang/String;

    .line 583
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

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->observer:Ljavafx/beans/InvalidationListener;

    .line 584
    move-object v4, v1

    invoke-static {v4}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$StringCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableBooleanValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 585
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$StringCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableStringValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 586
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/When;Ljava/lang/String;Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/binding/When$1;)V
    .locals 9

    .prologue
    .line 557
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$StringCondition;
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/value/ObservableStringValue;
    move-object v4, p4

    .local v4, "x3":Ljavafx/beans/binding/When$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/binding/When$StringCondition;-><init>(Ljavafx/beans/binding/When;Ljava/lang/String;Ljavafx/beans/value/ObservableStringValue;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$StringCondition;
    move-object v1, p1

    move-object v2, p2

    .local v2, "then":Ljavafx/beans/value/ObservableStringValue;
    move-object/from16 v3, p3

    .local v3, "otherwise":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->this$0:Ljavafx/beans/binding/When;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/binding/StringBinding;-><init>()V

    .line 589
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->trueResult:Ljavafx/beans/value/ObservableStringValue;

    .line 590
    move-object v4, v0

    const-string v5, ""

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->trueResultValue:Ljava/lang/String;

    .line 591
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->falseResult:Ljavafx/beans/value/ObservableStringValue;

    .line 592
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->falseResultValue:Ljava/lang/String;

    .line 593
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

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->observer:Ljavafx/beans/InvalidationListener;

    .line 594
    move-object v4, v1

    invoke-static {v4}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$StringCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableBooleanValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 595
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$StringCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableStringValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 596
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;Ljavafx/beans/binding/When$1;)V
    .locals 9

    .prologue
    .line 557
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$StringCondition;
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ObservableStringValue;
    move-object v3, p3

    .local v3, "x2":Ljava/lang/String;
    move-object v4, p4

    .local v4, "x3":Ljavafx/beans/binding/When$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/binding/When$StringCondition;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)V
    .locals 13

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$StringCondition;
    move-object v1, p1

    move-object v2, p2

    .local v2, "then":Ljavafx/beans/value/ObservableStringValue;
    move-object/from16 v3, p3

    .local v3, "otherwise":Ljavafx/beans/value/ObservableStringValue;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->this$0:Ljavafx/beans/binding/When;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/binding/StringBinding;-><init>()V

    .line 568
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->trueResult:Ljavafx/beans/value/ObservableStringValue;

    .line 569
    move-object v4, v0

    const-string v5, ""

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->trueResultValue:Ljava/lang/String;

    .line 570
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->falseResult:Ljavafx/beans/value/ObservableStringValue;

    .line 571
    move-object v4, v0

    const-string v5, ""

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->falseResultValue:Ljava/lang/String;

    .line 572
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

    iput-object v5, v4, Ljavafx/beans/binding/When$StringCondition;->observer:Ljavafx/beans/InvalidationListener;

    .line 573
    move-object v4, v1

    invoke-static {v4}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$StringCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableBooleanValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 574
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$StringCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableStringValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 575
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$StringCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableStringValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 576
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/binding/When$1;)V
    .locals 9

    .prologue
    .line 557
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$StringCondition;
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ObservableStringValue;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/value/ObservableStringValue;
    move-object v4, p4

    .local v4, "x3":Ljavafx/beans/binding/When$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/binding/When$StringCondition;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)V

    return-void
.end method


# virtual methods
.method protected computeValue()Ljava/lang/String;
    .locals 9

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$StringCondition;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$StringCondition;->this$0:Ljavafx/beans/binding/When;

    invoke-static {v2}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v2

    move v1, v2

    .line 610
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

    .line 611
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$StringCondition;->trueResult:Ljavafx/beans/value/ObservableStringValue;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$StringCondition;->trueResult:Ljavafx/beans/value/ObservableStringValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableStringValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 612
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/When$StringCondition;
    return-object v0

    .line 611
    .restart local v0    # "this":Ljavafx/beans/binding/When$StringCondition;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$StringCondition;->trueResultValue:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$StringCondition;->falseResult:Ljavafx/beans/value/ObservableStringValue;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$StringCondition;->falseResult:Ljavafx/beans/value/ObservableStringValue;

    .line 612
    invoke-interface {v2}, Ljavafx/beans/value/ObservableStringValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$StringCondition;->falseResultValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 617
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$StringCondition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$StringCondition;->observer:Ljavafx/beans/InvalidationListener;

    if-nez v1, :cond_1

    .line 618
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavafx/beans/Observable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$StringCondition;->this$0:Ljavafx/beans/binding/When;

    invoke-static {v5}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-super {v1, v2}, Ljavafx/beans/binding/StringBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$StringCondition;->this$0:Ljavafx/beans/binding/When;

    invoke-static {v1}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$StringCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableBooleanValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 621
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$StringCondition;->trueResult:Ljavafx/beans/value/ObservableStringValue;

    if-eqz v1, :cond_2

    .line 622
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$StringCondition;->trueResult:Ljavafx/beans/value/ObservableStringValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$StringCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableStringValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 624
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$StringCondition;->falseResult:Ljavafx/beans/value/ObservableStringValue;

    if-eqz v1, :cond_0

    .line 625
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$StringCondition;->falseResult:Ljavafx/beans/value/ObservableStringValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$StringCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableStringValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

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
    .line 634
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$StringCondition;
    sget-boolean v2, Ljavafx/beans/binding/When$StringCondition;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$StringCondition;->this$0:Ljavafx/beans/binding/When;

    invoke-static {v2}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 635
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljavafx/beans/value/ObservableValue;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$StringCondition;->this$0:Ljavafx/beans/binding/When;

    invoke-static {v5}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2}, Ljavafx/collections/FXCollections;->observableArrayList([Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v1, v2

    .line 636
    .local v1, "seq":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/beans/value/ObservableValue<*>;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$StringCondition;->trueResult:Ljavafx/beans/value/ObservableStringValue;

    if-eqz v2, :cond_1

    .line 637
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/When$StringCondition;->trueResult:Ljavafx/beans/value/ObservableStringValue;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 639
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$StringCondition;->falseResult:Ljavafx/beans/value/ObservableStringValue;

    if-eqz v2, :cond_2

    .line 640
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/When$StringCondition;->falseResult:Ljavafx/beans/value/ObservableStringValue;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 642
    :cond_2
    move-object v2, v1

    invoke-static {v2}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/When$StringCondition;
    return-object v0
.end method

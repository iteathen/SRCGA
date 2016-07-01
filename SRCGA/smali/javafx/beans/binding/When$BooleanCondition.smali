.class Ljavafx/beans/binding/When$BooleanCondition;
.super Ljavafx/beans/binding/BooleanBinding;
.source "When.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/binding/When;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BooleanCondition"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final falseResult:Ljavafx/beans/value/ObservableBooleanValue;

.field private final falseResultValue:Z

.field private final observer:Ljavafx/beans/InvalidationListener;

.field final synthetic this$0:Ljavafx/beans/binding/When;

.field private final trueResult:Ljavafx/beans/value/ObservableBooleanValue;

.field private final trueResultValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 387
    const-class v0, Ljavafx/beans/binding/When;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/beans/binding/When$BooleanCondition;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableBooleanValue;)V
    .locals 13

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$BooleanCondition;
    move-object v1, p1

    move-object v2, p2

    .local v2, "then":Ljavafx/beans/value/ObservableBooleanValue;
    move-object/from16 v3, p3

    .local v3, "otherwise":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->this$0:Ljavafx/beans/binding/When;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/binding/BooleanBinding;-><init>()V

    .line 397
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->trueResult:Ljavafx/beans/value/ObservableBooleanValue;

    .line 398
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->trueResultValue:Z

    .line 399
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->falseResult:Ljavafx/beans/value/ObservableBooleanValue;

    .line 400
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->falseResultValue:Z

    .line 401
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

    iput-object v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->observer:Ljavafx/beans/InvalidationListener;

    .line 402
    move-object v4, v1

    invoke-static {v4}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$BooleanCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableBooleanValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 403
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$BooleanCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableBooleanValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 404
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$BooleanCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableBooleanValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 405
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/binding/When$1;)V
    .locals 9

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$BooleanCondition;
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v4, p4

    .local v4, "x3":Ljavafx/beans/binding/When$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/binding/When$BooleanCondition;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableBooleanValue;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableBooleanValue;Z)V
    .locals 13

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$BooleanCondition;
    move-object v1, p1

    move-object v2, p2

    .local v2, "then":Ljavafx/beans/value/ObservableBooleanValue;
    move/from16 v3, p3

    .local v3, "otherwise":Z
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->this$0:Ljavafx/beans/binding/When;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/binding/BooleanBinding;-><init>()V

    .line 418
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->trueResult:Ljavafx/beans/value/ObservableBooleanValue;

    .line 419
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->trueResultValue:Z

    .line 420
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->falseResult:Ljavafx/beans/value/ObservableBooleanValue;

    .line 421
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->falseResultValue:Z

    .line 422
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

    iput-object v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->observer:Ljavafx/beans/InvalidationListener;

    .line 423
    move-object v4, v1

    invoke-static {v4}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$BooleanCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableBooleanValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 424
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$BooleanCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableBooleanValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 425
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableBooleanValue;ZLjavafx/beans/binding/When$1;)V
    .locals 9

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$BooleanCondition;
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/When;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ObservableBooleanValue;
    move v3, p3

    .local v3, "x2":Z
    move-object v4, p4

    .local v4, "x3":Ljavafx/beans/binding/When$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/binding/When$BooleanCondition;-><init>(Ljavafx/beans/binding/When;Ljavafx/beans/value/ObservableBooleanValue;Z)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/binding/When;ZLjavafx/beans/value/ObservableBooleanValue;)V
    .locals 13

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$BooleanCondition;
    move-object v1, p1

    move v2, p2

    .local v2, "then":Z
    move-object/from16 v3, p3

    .local v3, "otherwise":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->this$0:Ljavafx/beans/binding/When;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/binding/BooleanBinding;-><init>()V

    .line 408
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->trueResult:Ljavafx/beans/value/ObservableBooleanValue;

    .line 409
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->trueResultValue:Z

    .line 410
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->falseResult:Ljavafx/beans/value/ObservableBooleanValue;

    .line 411
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->falseResultValue:Z

    .line 412
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

    iput-object v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->observer:Ljavafx/beans/InvalidationListener;

    .line 413
    move-object v4, v1

    invoke-static {v4}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$BooleanCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableBooleanValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 414
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$BooleanCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableBooleanValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 415
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/When;ZLjavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/binding/When$1;)V
    .locals 9

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$BooleanCondition;
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/When;
    move v2, p2

    .local v2, "x1":Z
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v4, p4

    .local v4, "x3":Ljavafx/beans/binding/When$1;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/binding/When$BooleanCondition;-><init>(Ljavafx/beans/binding/When;ZLjavafx/beans/value/ObservableBooleanValue;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/binding/When;ZZ)V
    .locals 10

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$BooleanCondition;
    move-object v1, p1

    move v2, p2

    .local v2, "then":Z
    move v3, p3

    .local v3, "otherwise":Z
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->this$0:Ljavafx/beans/binding/When;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/binding/BooleanBinding;-><init>()V

    .line 428
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->trueResult:Ljavafx/beans/value/ObservableBooleanValue;

    .line 429
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->trueResultValue:Z

    .line 430
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->falseResult:Ljavafx/beans/value/ObservableBooleanValue;

    .line 431
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->falseResultValue:Z

    .line 432
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/beans/binding/When$BooleanCondition;->observer:Ljavafx/beans/InvalidationListener;

    .line 433
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

    invoke-super {v4, v5}, Ljavafx/beans/binding/BooleanBinding;->bind([Ljavafx/beans/Observable;)V

    .line 434
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/When;ZZLjavafx/beans/binding/When$1;)V
    .locals 9

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$BooleanCondition;
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/When;
    move v2, p2

    .local v2, "x1":Z
    move v3, p3

    .local v3, "x2":Z
    move-object v4, p4

    .local v4, "x3":Ljavafx/beans/binding/When$1;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/binding/When$BooleanCondition;-><init>(Ljavafx/beans/binding/When;ZZ)V

    return-void
.end method


# virtual methods
.method protected computeValue()Z
    .locals 9

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$BooleanCondition;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$BooleanCondition;->this$0:Ljavafx/beans/binding/When;

    invoke-static {v2}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v2

    move v1, v2

    .line 439
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

    .line 440
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$BooleanCondition;->trueResult:Ljavafx/beans/value/ObservableBooleanValue;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$BooleanCondition;->trueResult:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v2

    .line 441
    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/When$BooleanCondition;
    return v0

    .line 440
    .restart local v0    # "this":Ljavafx/beans/binding/When$BooleanCondition;
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/beans/binding/When$BooleanCondition;->trueResultValue:Z

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$BooleanCondition;->falseResult:Ljavafx/beans/value/ObservableBooleanValue;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$BooleanCondition;->falseResult:Ljavafx/beans/value/ObservableBooleanValue;

    .line 441
    invoke-interface {v2}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/beans/binding/When$BooleanCondition;->falseResultValue:Z

    goto :goto_0
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$BooleanCondition;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$BooleanCondition;->observer:Ljavafx/beans/InvalidationListener;

    if-nez v1, :cond_1

    .line 447
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavafx/beans/Observable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$BooleanCondition;->this$0:Ljavafx/beans/binding/When;

    invoke-static {v5}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-super {v1, v2}, Ljavafx/beans/binding/BooleanBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$BooleanCondition;->this$0:Ljavafx/beans/binding/When;

    invoke-static {v1}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$BooleanCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableBooleanValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 450
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$BooleanCondition;->trueResult:Ljavafx/beans/value/ObservableBooleanValue;

    if-eqz v1, :cond_2

    .line 451
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$BooleanCondition;->trueResult:Ljavafx/beans/value/ObservableBooleanValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$BooleanCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableBooleanValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 453
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$BooleanCondition;->falseResult:Ljavafx/beans/value/ObservableBooleanValue;

    if-eqz v1, :cond_0

    .line 454
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$BooleanCondition;->falseResult:Ljavafx/beans/value/ObservableBooleanValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$BooleanCondition;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableBooleanValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

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
    .line 462
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$BooleanCondition;
    sget-boolean v2, Ljavafx/beans/binding/When$BooleanCondition;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$BooleanCondition;->this$0:Ljavafx/beans/binding/When;

    invoke-static {v2}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 463
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljavafx/beans/value/ObservableValue;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$BooleanCondition;->this$0:Ljavafx/beans/binding/When;

    invoke-static {v5}, Ljavafx/beans/binding/When;->access$100(Ljavafx/beans/binding/When;)Ljavafx/beans/value/ObservableBooleanValue;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2}, Ljavafx/collections/FXCollections;->observableArrayList([Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v1, v2

    .line 464
    .local v1, "seq":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/beans/value/ObservableValue<*>;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$BooleanCondition;->trueResult:Ljavafx/beans/value/ObservableBooleanValue;

    if-eqz v2, :cond_1

    .line 465
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/When$BooleanCondition;->trueResult:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 467
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$BooleanCondition;->falseResult:Ljavafx/beans/value/ObservableBooleanValue;

    if-eqz v2, :cond_2

    .line 468
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/When$BooleanCondition;->falseResult:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 470
    :cond_2
    move-object v2, v1

    invoke-static {v2}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/When$BooleanCondition;
    return-object v0
.end method

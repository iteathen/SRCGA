.class Ljavafx/scene/control/Dialog$1;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/scene/control/DialogPane;",
        ">;"
    }
.end annotation


# instance fields
.field dialogPaneRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/control/DialogPane;",
            ">;"
        }
    .end annotation
.end field

.field final expandedListener:Ljavafx/beans/InvalidationListener;

.field final headerListener:Ljavafx/beans/InvalidationListener;

.field final synthetic this$0:Ljavafx/scene/control/Dialog;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Dialog;Ljava/lang/Object;Ljava/lang/String;Ljavafx/scene/control/DialogPane;)V
    .locals 10

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog$1;, "Ljavafx/scene/control/Dialog$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Dialog;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, p4

    .local v4, "x2":Ljavafx/scene/control/DialogPane;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/control/Dialog$1;->this$0:Ljavafx/scene/control/Dialog;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 507
    move-object v5, v0

    move-object v6, v0

    invoke-static {v6}, Ljavafx/scene/control/Dialog$1$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/Dialog$1;)Ljavafx/beans/InvalidationListener;

    move-result-object v6

    iput-object v6, v5, Ljavafx/scene/control/Dialog$1;->expandedListener:Ljavafx/beans/InvalidationListener;

    .line 518
    move-object v5, v0

    move-object v6, v0

    invoke-static {v6}, Ljavafx/scene/control/Dialog$1$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/Dialog$1;)Ljavafx/beans/InvalidationListener;

    move-result-object v6

    iput-object v6, v5, Ljavafx/scene/control/Dialog$1;->headerListener:Ljavafx/beans/InvalidationListener;

    .line 522
    move-object v5, v0

    new-instance v6, Ljava/lang/ref/WeakReference;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, v5, Ljavafx/scene/control/Dialog$1;->dialogPaneRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/Dialog$1;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/Dialog$1;->lambda$$589(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/Dialog$1;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/Dialog$1;->lambda$$590(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/DialogPane;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/Dialog$1;->lambda$invalidated$591(Ljavafx/scene/control/DialogPane;Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private synthetic lambda$$589(Ljavafx/beans/Observable;)V
    .locals 7

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog$1;, "Ljavafx/scene/control/Dialog$1;"
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/Dialog$1;->this$0:Ljavafx/scene/control/Dialog;

    invoke-virtual {v5}, Ljavafx/scene/control/Dialog;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v5

    move-object v2, v5

    .line 509
    .local v2, "dialogPane":Ljavafx/scene/control/DialogPane;
    move-object v5, v2

    if-nez v5, :cond_0

    .line 516
    :goto_0
    return-void

    .line 511
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/DialogPane;->getExpandableContent()Ljavafx/scene/Node;

    move-result-object v5

    move-object v3, v5

    .line 512
    .local v3, "content":Ljavafx/scene/Node;
    move-object v5, v3

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    move v4, v5

    .line 513
    .local v4, "isExpanded":Z
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/Dialog$1;->this$0:Ljavafx/scene/control/Dialog;

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Dialog;->setResizable(Z)V

    .line 515
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/Dialog$1;->this$0:Ljavafx/scene/control/Dialog;

    iget-object v5, v5, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    invoke-virtual {v5}, Ljavafx/scene/control/FXDialog;->sizeToScene()V

    .line 516
    goto :goto_0

    .line 512
    .end local v4    # "isExpanded":Z
    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Node;->isVisible()Z

    move-result v5

    goto :goto_1
.end method

.method private synthetic lambda$$590(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog$1;, "Ljavafx/scene/control/Dialog$1;"
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Dialog$1;->this$0:Ljavafx/scene/control/Dialog;

    invoke-static {v2}, Ljavafx/scene/control/Dialog;->access$000(Ljavafx/scene/control/Dialog;)V

    .line 520
    return-void
.end method

.method private static synthetic lambda$invalidated$591(Ljavafx/scene/control/DialogPane;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "newDialogPane":Ljavafx/scene/control/DialogPane;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/DialogPane;->requestLayout()V

    .line 542
    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 8

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog$1;, "Ljavafx/scene/control/Dialog$1;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Dialog$1;->dialogPaneRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/DialogPane;

    move-object v1, v3

    .line 526
    .local v1, "oldDialogPane":Ljavafx/scene/control/DialogPane;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 528
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->expandedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Dialog$1;->expandedListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 529
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->headerProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Dialog$1;->headerListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 530
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->headerTextProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Dialog$1;->headerListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/StringProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 531
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/DialogPane;->setDialog(Ljavafx/scene/control/Dialog;)V

    .line 534
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Dialog$1;->this$0:Ljavafx/scene/control/Dialog;

    invoke-virtual {v3}, Ljavafx/scene/control/Dialog;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v3

    move-object v2, v3

    .line 536
    .local v2, "newDialogPane":Ljavafx/scene/control/DialogPane;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 537
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Dialog$1;->this$0:Ljavafx/scene/control/Dialog;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/DialogPane;->setDialog(Ljavafx/scene/control/Dialog;)V

    .line 540
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->getButtonTypes()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-static {v4}, Ljavafx/scene/control/Dialog$1$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/DialogPane;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 543
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->expandedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Dialog$1;->expandedListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 544
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->headerProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Dialog$1;->headerListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 545
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->headerTextProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Dialog$1;->headerListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/StringProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 547
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Dialog$1;->this$0:Ljavafx/scene/control/Dialog;

    invoke-static {v3}, Ljavafx/scene/control/Dialog;->access$000(Ljavafx/scene/control/Dialog;)V

    .line 548
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->requestLayout()V

    .line 552
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Dialog$1;->this$0:Ljavafx/scene/control/Dialog;

    iget-object v3, v3, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/FXDialog;->setDialogPane(Ljavafx/scene/control/DialogPane;)V

    .line 554
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/scene/control/Dialog$1;->dialogPaneRef:Ljava/lang/ref/WeakReference;

    .line 555
    return-void
.end method

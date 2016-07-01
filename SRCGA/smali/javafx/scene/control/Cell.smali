.class public Ljavafx/scene/control/Cell;
.super Ljavafx/scene/control/Labeled;
.source "Cell.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/Labeled;"
    }
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "cell"

.field private static final PSEUDO_CLASS_EMPTY:Ljavafx/css/PseudoClass;

.field private static final PSEUDO_CLASS_FILLED:Ljavafx/css/PseudoClass;

.field private static final PSEUDO_CLASS_FOCUSED:Ljavafx/css/PseudoClass;

.field private static final PSEUDO_CLASS_SELECTED:Ljavafx/css/PseudoClass;


# instance fields
.field private editable:Ljavafx/beans/property/BooleanProperty;

.field private editing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field private empty:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field private item:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field private selected:Ljavafx/beans/property/ReadOnlyBooleanWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 721
    const-string v0, "selected"

    .line 722
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/Cell;->PSEUDO_CLASS_SELECTED:Ljavafx/css/PseudoClass;

    .line 723
    const-string v0, "focused"

    .line 724
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/Cell;->PSEUDO_CLASS_FOCUSED:Ljavafx/css/PseudoClass;

    .line 725
    const-string v0, "empty"

    .line 726
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/Cell;->PSEUDO_CLASS_EMPTY:Ljavafx/css/PseudoClass;

    .line 727
    const-string v0, "filled"

    .line 728
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/Cell;->PSEUDO_CLASS_FILLED:Ljavafx/css/PseudoClass;

    .line 727
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Labeled;-><init>()V

    .line 386
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "item"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Cell;->item:Ljavafx/beans/property/ObjectProperty;

    .line 413
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Cell$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Cell$2;-><init>(Ljavafx/scene/control/Cell;Z)V

    iput-object v2, v1, Ljavafx/scene/control/Cell;->empty:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 454
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Cell$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/Cell$3;-><init>(Ljavafx/scene/control/Cell;)V

    iput-object v2, v1, Ljavafx/scene/control/Cell;->selected:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 349
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Cell;->setText(Ljava/lang/String;)V

    .line 354
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Cell;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    check-cast v1, Ljavafx/css/StyleableProperty;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 355
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Cell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "cell"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v1

    .line 362
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/Labeled;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    new-instance v2, Ljavafx/scene/control/Cell$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/Cell$1;-><init>(Ljavafx/scene/control/Cell;)V

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 374
    move-object v1, v0

    sget-object v2, Ljavafx/scene/control/Cell;->PSEUDO_CLASS_EMPTY:Ljavafx/css/PseudoClass;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/Cell;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 375
    return-void
.end method

.method static synthetic access$000()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 337
    sget-object v0, Ljavafx/scene/control/Cell;->PSEUDO_CLASS_FOCUSED:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$100()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 337
    sget-object v0, Ljavafx/scene/control/Cell;->PSEUDO_CLASS_EMPTY:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$200()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 337
    sget-object v0, Ljavafx/scene/control/Cell;->PSEUDO_CLASS_FILLED:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$300()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 337
    sget-object v0, Ljavafx/scene/control/Cell;->PSEUDO_CLASS_SELECTED:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method private editingPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    .locals 7

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Cell;->editing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    .line 509
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "editing"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Cell;->editing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 511
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Cell;->editing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    return-object v0
.end method

.method private setEditing(Z)V
    .locals 4

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Cell;->editingPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 491
    return-void
.end method

.method private setEmpty(Z)V
    .locals 4

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Cell;->empty:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    return-void
.end method


# virtual methods
.method public cancelEdit()V
    .locals 3

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Cell;->isEditing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/Cell;->setEditing(Z)V

    .line 582
    :cond_0
    return-void
.end method

.method public commitEdit(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 608
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Cell;->isEditing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/control/Cell;->setEditing(Z)V

    .line 611
    :cond_0
    return-void
.end method

.method public final editableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8

    .prologue
    .line 549
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Cell;->editable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 550
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "editable"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/Cell;->editable:Ljavafx/beans/property/BooleanProperty;

    .line 552
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Cell;->editable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    return-object v0
.end method

.method public final editingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Cell;->editingPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    return-object v0
.end method

.method public final emptyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Cell;->empty:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    return-object v0
.end method

.method public final getItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Cell;->item:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    return-object v0
.end method

.method protected impl_cssGetFocusTraversableInitialValue()Ljava/lang/Boolean;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    return-object v0
.end method

.method public final isEditable()Z
    .locals 2

    .prologue
    .line 537
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Cell;->editable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Cell;->editable:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isEditing()Z
    .locals 2

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Cell;->editing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Cell;->editing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Cell;->empty:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    return v0
.end method

.method protected isItemChanged(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 710
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, p1

    .local v1, "oldItem":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "newItem":Ljava/lang/Object;, "TT;"
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move-object v3, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final isSelected()Z
    .locals 2

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Cell;->selected:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    return v0
.end method

.method public final itemProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Cell;->item:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    return-object v0
.end method

.method public final selectedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Cell;->selected:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    return-object v0
.end method

.method public final setEditable(Z)V
    .locals 4

    .prologue
    .line 530
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Cell;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 531
    return-void
.end method

.method public final setItem(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Cell;->item:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method setSelected(Z)V
    .locals 4

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Cell;->selected:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    return-void
.end method

.method public startEdit()V
    .locals 3

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Cell;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Cell;->isEditing()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Cell;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 570
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljavafx/scene/control/Cell;->setEditing(Z)V

    .line 572
    :cond_0
    return-void
.end method

.method protected updateItem(Ljava/lang/Object;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "empty":Z
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Cell;->setItem(Ljava/lang/Object;)V

    .line 671
    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/scene/control/Cell;->setEmpty(Z)V

    .line 672
    move v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Cell;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 673
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Cell;->updateSelected(Z)V

    .line 675
    :cond_0
    return-void
.end method

.method public updateSelected(Z)V
    .locals 4

    .prologue
    .line 683
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move v1, p1

    .local v1, "selected":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Cell;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 685
    :goto_0
    return-void

    .line 684
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Cell;->setSelected(Z)V

    .line 685
    goto :goto_0
.end method

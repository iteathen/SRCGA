.class public Ljavafx/scene/control/ListCell;
.super Ljavafx/scene/control/IndexedCell;
.source "ListCell.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/IndexedCell",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "list-cell"


# instance fields
.field private final editingListener:Ljavafx/beans/InvalidationListener;

.field private firstRun:Z

.field private final focusModelPropertyListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljavafx/scene/control/FocusModel",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final focusedListener:Ljavafx/beans/InvalidationListener;

.field private final itemsListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final itemsPropertyListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private listView:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/ListView",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final selectedListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final selectionModelPropertyListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private updateEditingIndex:Z

.field private final weakEditingListener:Ljavafx/beans/WeakInvalidationListener;

.field private final weakFocusModelPropertyListener:Ljavafx/beans/value/WeakChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WeakChangeListener",
            "<",
            "Ljavafx/scene/control/FocusModel",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final weakFocusedListener:Ljavafx/beans/WeakInvalidationListener;

.field private final weakItemsListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final weakItemsPropertyListener:Ljavafx/beans/value/WeakChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WeakChangeListener",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final weakSelectedListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final weakSelectionModelPropertyListener:Ljavafx/beans/value/WeakChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WeakChangeListener",
            "<",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/IndexedCell;-><init>()V

    .line 107
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/ListCell$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/ListCell;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/ListCell;->editingListener:Ljavafx/beans/InvalidationListener;

    .line 110
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/control/ListCell;->updateEditingIndex:Z

    .line 116
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/ListCell$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/ListCell;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/ListCell;->selectedListener:Ljavafx/collections/ListChangeListener;

    .line 124
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ListCell$1;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/ListCell$1;-><init>(Ljavafx/scene/control/ListCell;)V

    iput-object v2, v1, Ljavafx/scene/control/ListCell;->selectionModelPropertyListener:Ljavafx/beans/value/ChangeListener;

    .line 148
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/ListCell$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/ListCell;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/ListCell;->itemsListener:Ljavafx/collections/ListChangeListener;

    .line 175
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ListCell$2;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/ListCell$2;-><init>(Ljavafx/scene/control/ListCell;)V

    iput-object v2, v1, Ljavafx/scene/control/ListCell;->itemsPropertyListener:Ljavafx/beans/value/ChangeListener;

    .line 193
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/ListCell$$Lambda$4;->lambdaFactory$(Ljavafx/scene/control/ListCell;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/ListCell;->focusedListener:Ljavafx/beans/InvalidationListener;

    .line 201
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ListCell$3;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/ListCell$3;-><init>(Ljavafx/scene/control/ListCell;)V

    iput-object v2, v1, Ljavafx/scene/control/ListCell;->focusModelPropertyListener:Ljavafx/beans/value/ChangeListener;

    .line 216
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ListCell;->editingListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/ListCell;->weakEditingListener:Ljavafx/beans/WeakInvalidationListener;

    .line 217
    move-object v1, v0

    new-instance v2, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ListCell;->selectedListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v3, v4}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v2, v1, Ljavafx/scene/control/ListCell;->weakSelectedListener:Ljavafx/collections/WeakListChangeListener;

    .line 218
    move-object v1, v0

    new-instance v2, Ljavafx/beans/value/WeakChangeListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ListCell;->selectionModelPropertyListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v3, v4}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v2, v1, Ljavafx/scene/control/ListCell;->weakSelectionModelPropertyListener:Ljavafx/beans/value/WeakChangeListener;

    .line 219
    move-object v1, v0

    new-instance v2, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ListCell;->itemsListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v3, v4}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v2, v1, Ljavafx/scene/control/ListCell;->weakItemsListener:Ljavafx/collections/WeakListChangeListener;

    .line 220
    move-object v1, v0

    new-instance v2, Ljavafx/beans/value/WeakChangeListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ListCell;->itemsPropertyListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v3, v4}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v2, v1, Ljavafx/scene/control/ListCell;->weakItemsPropertyListener:Ljavafx/beans/value/WeakChangeListener;

    .line 221
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ListCell;->focusedListener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Ljavafx/scene/control/ListCell;->weakFocusedListener:Ljavafx/beans/WeakInvalidationListener;

    .line 222
    move-object v1, v0

    new-instance v2, Ljavafx/beans/value/WeakChangeListener;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ListCell;->focusModelPropertyListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v3, v4}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v2, v1, Ljavafx/scene/control/ListCell;->weakFocusModelPropertyListener:Ljavafx/beans/value/WeakChangeListener;

    .line 233
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ListCell$4;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "listView"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/ListCell$4;-><init>(Ljavafx/scene/control/ListCell;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/ListCell;->listView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 444
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/control/ListCell;->firstRun:Z

    .line 84
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ListCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const-string v5, "list-cell"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v1

    .line 85
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->LIST_ITEM:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/ListCell;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/ListCell;)Ljavafx/collections/WeakListChangeListener;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListCell;->weakSelectedListener:Ljavafx/collections/WeakListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ListCell;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/control/ListCell;)V
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListCell;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ListCell;->updateSelection()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/control/ListCell;)Ljavafx/collections/WeakListChangeListener;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListCell;->weakItemsListener:Ljavafx/collections/WeakListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ListCell;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/control/ListCell;I)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListCell;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListCell;->updateItem(I)V

    return-void
.end method

.method static synthetic access$400(Ljavafx/scene/control/ListCell;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListCell;->weakFocusedListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ListCell;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/control/ListCell;)V
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListCell;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ListCell;->updateFocus()V

    return-void
.end method

.method static synthetic access$600(Ljavafx/scene/control/ListCell;)Ljavafx/beans/WeakInvalidationListener;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListCell;->weakEditingListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ListCell;
    return-object v0
.end method

.method static synthetic access$700(Ljavafx/scene/control/ListCell;)Ljavafx/beans/value/WeakChangeListener;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListCell;->weakItemsPropertyListener:Ljavafx/beans/value/WeakChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ListCell;
    return-object v0
.end method

.method static synthetic access$800(Ljavafx/scene/control/ListCell;)Ljavafx/beans/value/WeakChangeListener;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListCell;->weakFocusModelPropertyListener:Ljavafx/beans/value/WeakChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ListCell;
    return-object v0
.end method

.method static synthetic access$900(Ljavafx/scene/control/ListCell;)Ljavafx/beans/value/WeakChangeListener;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ListCell;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListCell;->weakSelectionModelPropertyListener:Ljavafx/beans/value/WeakChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ListCell;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/ListCell;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListCell;->lambda$new$158(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/ListCell;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListCell;->lambda$new$159(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/ListCell;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListCell;->lambda$new$160(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/control/ListCell;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListCell;->lambda$new$161(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$158(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ListCell;->updateEditing()V

    .line 109
    return-void
.end method

.method private synthetic lambda$new$159(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ListCell;->updateSelection()V

    .line 118
    return-void
.end method

.method private synthetic lambda$new$160(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 12

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    const/4 v10, 0x0

    move v2, v10

    .line 150
    .local v2, "doUpdate":Z
    :goto_0
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 154
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ListCell;->getIndex()I

    move-result v10

    move v3, v10

    .line 155
    .local v3, "currentIndex":I
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ListCell;->getListView()Ljavafx/scene/control/ListView;

    move-result-object v10

    move-object v4, v10

    .line 156
    .local v4, "lv":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v10, v4

    if-nez v10, :cond_2

    const/4 v10, 0x0

    :goto_1
    move-object v5, v10

    .line 157
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v10, v5

    if-nez v10, :cond_3

    const/4 v10, 0x0

    :goto_2
    move v6, v10

    .line 159
    .local v6, "itemCount":I
    move v10, v3

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v11

    if-lt v10, v11, :cond_4

    const/4 v10, 0x1

    :goto_3
    move v7, v10

    .line 160
    .local v7, "indexAfterChangeFromIndex":Z
    move v10, v3

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v11

    if-lt v10, v11, :cond_0

    move v10, v3

    move v11, v6

    if-ne v10, v11, :cond_5

    :cond_0
    const/4 v10, 0x1

    :goto_4
    move v8, v10

    .line 161
    .local v8, "indexBeforeChangeToIndex":Z
    move v10, v7

    if-eqz v10, :cond_6

    move v10, v8

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    :goto_5
    move v9, v10

    .line 163
    .local v9, "indexInRange":Z
    move v10, v9

    if-nez v10, :cond_1

    move v10, v7

    if-eqz v10, :cond_7

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->wasReplaced()Z

    move-result v10

    if-nez v10, :cond_7

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v10

    if-nez v10, :cond_1

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_1
    const/4 v10, 0x1

    :goto_6
    move v2, v10

    .line 164
    goto :goto_0

    .line 156
    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v6    # "itemCount":I
    .end local v7    # "indexAfterChangeFromIndex":Z
    .end local v8    # "indexBeforeChangeToIndex":Z
    .end local v9    # "indexInRange":Z
    :cond_2
    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v10

    goto :goto_1

    .line 157
    .restart local v5    # "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_3
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_2

    .line 159
    .restart local v6    # "itemCount":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 160
    .restart local v7    # "indexAfterChangeFromIndex":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    .line 161
    .restart local v8    # "indexBeforeChangeToIndex":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_5

    .line 163
    .restart local v9    # "indexInRange":Z
    :cond_7
    const/4 v10, 0x0

    goto :goto_6

    .line 166
    .end local v3    # "currentIndex":I
    .end local v4    # "lv":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v6    # "itemCount":I
    .end local v7    # "indexAfterChangeFromIndex":Z
    .end local v8    # "indexBeforeChangeToIndex":Z
    .end local v9    # "indexInRange":Z
    :cond_8
    move v10, v2

    if-eqz v10, :cond_9

    .line 167
    move-object v10, v0

    const/4 v11, -0x1

    invoke-direct {v10, v11}, Ljavafx/scene/control/ListCell;->updateItem(I)V

    .line 169
    :cond_9
    return-void
.end method

.method private synthetic lambda$new$161(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ListCell;->updateFocus()V

    .line 195
    return-void
.end method

.method private setListView(Ljavafx/scene/control/ListView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ListView",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ListCell;->listView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private updateEditing()V
    .locals 7

    .prologue
    .line 530
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/ListCell;->getIndex()I

    move-result v5

    move v1, v5

    .line 531
    .local v1, "index":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/ListCell;->getListView()Ljavafx/scene/control/ListView;

    move-result-object v5

    move-object v2, v5

    .line 532
    .local v2, "list":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v5, v2

    if-nez v5, :cond_1

    const/4 v5, -0x1

    :goto_0
    move v3, v5

    .line 533
    .local v3, "editIndex":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/ListCell;->isEditing()Z

    move-result v5

    move v4, v5

    .line 536
    .local v4, "editing":Z
    move v5, v1

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    move-object v5, v2

    if-eqz v5, :cond_0

    .line 539
    move v5, v1

    move v6, v3

    if-ne v5, v6, :cond_2

    move v5, v4

    if-nez v5, :cond_2

    .line 540
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/ListCell;->startEdit()V

    .line 553
    :cond_0
    :goto_1
    return-void

    .line 532
    .end local v3    # "editIndex":I
    .end local v4    # "editing":Z
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/ListView;->getEditingIndex()I

    move-result v5

    goto :goto_0

    .line 541
    .restart local v3    # "editIndex":I
    .restart local v4    # "editing":Z
    :cond_2
    move v5, v1

    move v6, v3

    if-eq v5, v6, :cond_0

    move v5, v4

    if-eqz v5, :cond_0

    .line 548
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/control/ListCell;->updateEditingIndex:Z

    .line 549
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/ListCell;->cancelEdit()V

    .line 550
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Ljavafx/scene/control/ListCell;->updateEditingIndex:Z

    goto :goto_1
.end method

.method private updateFocus()V
    .locals 7

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/ListCell;->getIndex()I

    move-result v4

    move v1, v4

    .line 517
    .local v1, "index":I
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/ListCell;->getListView()Ljavafx/scene/control/ListView;

    move-result-object v4

    move-object v2, v4

    .line 518
    .local v2, "listView":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move v4, v1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move-object v4, v2

    if-nez v4, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v4

    move-object v3, v4

    .line 521
    .local v3, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v4, v3

    if-nez v4, :cond_2

    .line 522
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ListCell;->setFocused(Z)V

    .line 523
    goto :goto_0

    .line 526
    :cond_2
    move-object v4, v0

    move-object v5, v3

    move v6, v1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/FocusModel;->isFocused(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ListCell;->setFocused(Z)V

    .line 527
    goto :goto_0
.end method

.method private updateItem(I)V
    .locals 13

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move v1, p1

    .local v1, "oldIndex":I
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ListCell;->getListView()Ljavafx/scene/control/ListView;

    move-result-object v10

    move-object v2, v10

    .line 447
    .local v2, "lv":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v10, v2

    if-nez v10, :cond_1

    const/4 v10, 0x0

    :goto_0
    move-object v3, v10

    .line 448
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ListCell;->getIndex()I

    move-result v10

    move v4, v10

    .line 449
    .local v4, "index":I
    move-object v10, v3

    if-nez v10, :cond_2

    const/4 v10, -0x1

    :goto_1
    move v5, v10

    .line 452
    .local v5, "itemCount":I
    move-object v10, v3

    if-eqz v10, :cond_3

    move v10, v4

    if-ltz v10, :cond_3

    move v10, v4

    move v11, v5

    if-ge v10, v11, :cond_3

    const/4 v10, 0x1

    :goto_2
    move v6, v10

    .line 454
    .local v6, "valid":Z
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ListCell;->getItem()Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    .line 455
    .local v7, "oldValue":Ljava/lang/Object;, "TT;"
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ListCell;->isEmpty()Z

    move-result v10

    move v8, v10

    .line 458
    .local v8, "isEmpty":Z
    move v10, v6

    if-eqz v10, :cond_5

    .line 459
    move-object v10, v3

    move v11, v4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    .line 463
    .local v9, "newValue":Ljava/lang/Object;, "TT;"
    move v10, v1

    move v11, v4

    if-ne v10, v11, :cond_4

    .line 464
    move-object v10, v0

    move-object v11, v7

    move-object v12, v9

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/ListCell;->isItemChanged(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 468
    .line 484
    .end local v9    # "newValue":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_3
    return-void

    .line 447
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v4    # "index":I
    .end local v5    # "itemCount":I
    .end local v6    # "valid":Z
    .end local v7    # "oldValue":Ljava/lang/Object;, "TT;"
    .end local v8    # "isEmpty":Z
    :cond_1
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v10

    goto :goto_0

    .line 449
    .restart local v3    # "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v4    # "index":I
    :cond_2
    move-object v10, v3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_1

    .line 452
    .restart local v5    # "itemCount":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 471
    .restart local v6    # "valid":Z
    .restart local v7    # "oldValue":Ljava/lang/Object;, "TT;"
    .restart local v8    # "isEmpty":Z
    .restart local v9    # "newValue":Ljava/lang/Object;, "TT;"
    :cond_4
    move-object v10, v0

    move-object v11, v9

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/ListCell;->updateItem(Ljava/lang/Object;Z)V

    .line 472
    goto :goto_3

    .line 479
    .end local v9    # "newValue":Ljava/lang/Object;, "TT;"
    :cond_5
    move v10, v8

    if-nez v10, :cond_6

    move-object v10, v7

    if-nez v10, :cond_7

    :cond_6
    move-object v10, v0

    iget-boolean v10, v10, Ljavafx/scene/control/ListCell;->firstRun:Z

    if-eqz v10, :cond_0

    .line 480
    :cond_7
    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/ListCell;->updateItem(Ljava/lang/Object;Z)V

    .line 481
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Ljavafx/scene/control/ListCell;->firstRun:Z

    goto :goto_3
.end method

.method private updateSelection()V
    .locals 7

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/ListCell;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 513
    :goto_0
    return-void

    .line 499
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/ListCell;->getIndex()I

    move-result v5

    move v1, v5

    .line 500
    .local v1, "index":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/ListCell;->getListView()Ljavafx/scene/control/ListView;

    move-result-object v5

    move-object v2, v5

    .line 501
    .local v2, "listView":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move v5, v1

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    move-object v5, v2

    if-nez v5, :cond_2

    :cond_1
    goto :goto_0

    .line 503
    :cond_2
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v5

    move-object v3, v5

    .line 504
    .local v3, "sm":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    move-object v5, v3

    if-nez v5, :cond_3

    .line 505
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/ListCell;->updateSelected(Z)V

    .line 506
    goto :goto_0

    .line 509
    :cond_3
    move-object v5, v3

    move v6, v1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SelectionModel;->isSelected(I)Z

    move-result v5

    move v4, v5

    .line 510
    .local v4, "isSelected":Z
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/ListCell;->isSelected()Z

    move-result v5

    move v6, v4

    if-ne v5, v6, :cond_4

    goto :goto_0

    .line 512
    :cond_4
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/ListCell;->updateSelected(Z)V

    .line 513
    goto :goto_0
.end method


# virtual methods
.method public cancelEdit()V
    .locals 11

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ListCell;->isEditing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 435
    :goto_0
    return-void

    .line 414
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ListCell;->getListView()Ljavafx/scene/control/ListView;

    move-result-object v3

    move-object v1, v3

    .line 416
    .local v1, "list":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v3, v0

    invoke-super {v3}, Ljavafx/scene/control/IndexedCell;->cancelEdit()V

    .line 418
    move-object v3, v1

    if-eqz v3, :cond_2

    .line 419
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->getEditingIndex()I

    move-result v3

    move v2, v3

    .line 422
    .local v2, "editingIndex":I
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/control/ListCell;->updateEditingIndex:Z

    if-eqz v3, :cond_1

    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ListView;->edit(I)V

    .line 428
    :cond_1
    move-object v3, v1

    invoke-static {v3}, Ljavafx/scene/control/ControlUtils;->requestFocusOnControlOnlyIfCurrentFocusOwnerIsChild(Ljavafx/scene/control/Control;)V

    .line 430
    move-object v3, v1

    new-instance v4, Ljavafx/scene/control/ListView$EditEvent;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    .line 431
    invoke-static {}, Ljavafx/scene/control/ListView;->editCancelEvent()Ljavafx/event/EventType;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/control/ListView$EditEvent;-><init>(Ljavafx/scene/control/ListView;Ljavafx/event/EventType;Ljava/lang/Object;I)V

    .line 430
    invoke-virtual {v3, v4}, Ljavafx/scene/control/ListView;->fireEvent(Ljavafx/event/Event;)V

    .line 435
    .end local v2    # "editingIndex":I
    :cond_2
    goto :goto_0
.end method

.method public commitEdit(Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ListCell;->isEditing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 407
    :goto_0
    return-void

    .line 374
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ListCell;->getListView()Ljavafx/scene/control/ListView;

    move-result-object v3

    move-object v2, v3

    .line 376
    .local v2, "list":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 378
    move-object v3, v2

    new-instance v4, Ljavafx/scene/control/ListView$EditEvent;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v2

    .line 379
    invoke-static {}, Ljavafx/scene/control/ListView;->editCommitEvent()Ljavafx/event/EventType;

    move-result-object v7

    move-object v8, v1

    move-object v9, v2

    .line 381
    invoke-virtual {v9}, Ljavafx/scene/control/ListView;->getEditingIndex()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/control/ListView$EditEvent;-><init>(Ljavafx/scene/control/ListView;Ljavafx/event/EventType;Ljava/lang/Object;I)V

    .line 378
    invoke-virtual {v3, v4}, Ljavafx/scene/control/ListView;->fireEvent(Ljavafx/event/Event;)V

    .line 389
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/control/IndexedCell;->commitEdit(Ljava/lang/Object;)V

    .line 392
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ListCell;->updateItem(Ljava/lang/Object;Z)V

    .line 394
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 399
    move-object v3, v2

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ListView;->edit(I)V

    .line 405
    move-object v3, v2

    invoke-static {v3}, Ljavafx/scene/control/ControlUtils;->requestFocusOnControlOnlyIfCurrentFocusOwnerIsChild(Ljavafx/scene/control/Control;)V

    .line 407
    :cond_2
    goto :goto_0
.end method

.method protected createDefaultSkin()Ljavafx/scene/control/Skin;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    new-instance v1, Lcom/sun/javafx/scene/control/skin/ListCellSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ListCellSkin;-><init>(Ljavafx/scene/control/ListCell;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    return-object v0
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 584
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v5, Ljavafx/scene/control/ListCell$5;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 595
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Ljavafx/scene/control/IndexedCell;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 586
    :pswitch_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/ListCell;->getListView()Ljavafx/scene/control/ListView;

    move-result-object v5

    move-object v3, v5

    .line 587
    .local v3, "listView":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 588
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v5

    move-object v4, v5

    .line 589
    .local v4, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 590
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/ListCell;->getIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 592
    :cond_1
    goto :goto_0

    .line 584
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final getListView()Ljavafx/scene/control/ListView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/ListView",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListCell;->listView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ListView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    return-object v0
.end method

.method indexChanged(II)V
    .locals 6

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move v1, p1

    .local v1, "oldIndex":I
    move v2, p2

    .local v2, "newIndex":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/IndexedCell;->indexChanged(II)V

    .line 321
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ListCell;->isEditing()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 334
    :goto_0
    return-void

    .line 330
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/control/ListCell;->updateItem(I)V

    .line 331
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/ListCell;->updateSelection()V

    .line 332
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/ListCell;->updateFocus()V

    goto :goto_0
.end method

.method public final listViewProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/ListView",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListCell;->listView:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    return-object v0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 575
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/ListCell$5;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 578
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/IndexedCell;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    :goto_0
    return-object v0

    .line 576
    .restart local v0    # "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ListCell;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 577
    :pswitch_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ListCell;->isSelected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 575
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startEdit()V
    .locals 10

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListCell;->getListView()Ljavafx/scene/control/ListView;

    move-result-object v2

    move-object v1, v2

    .line 351
    .local v1, "list":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListCell;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->isEditable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 352
    .line 369
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/control/IndexedCell;->startEdit()V

    .line 361
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 362
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/ListView$EditEvent;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    .line 363
    invoke-static {}, Ljavafx/scene/control/ListView;->editStartEvent()Ljavafx/event/EventType;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v1

    .line 365
    invoke-virtual {v8}, Ljavafx/scene/control/ListView;->getEditingIndex()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/scene/control/ListView$EditEvent;-><init>(Ljavafx/scene/control/ListView;Ljavafx/event/EventType;Ljava/lang/Object;I)V

    .line 362
    invoke-virtual {v2, v3}, Ljavafx/scene/control/ListView;->fireEvent(Ljavafx/event/Event;)V

    .line 366
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ListCell;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ListView;->edit(I)V

    .line 367
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/ListView;->requestFocus()V

    .line 369
    :cond_2
    goto :goto_0
.end method

.method public final updateListView(Ljavafx/scene/control/ListView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ListView",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v1, p1

    .local v1, "listView":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListCell;->setListView(Ljavafx/scene/control/ListView;)V

    .line 495
    return-void
.end method

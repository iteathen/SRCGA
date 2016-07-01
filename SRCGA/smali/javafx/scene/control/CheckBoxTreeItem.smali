.class public Ljavafx/scene/control/CheckBoxTreeItem;
.super Ljavafx/scene/control/TreeItem;
.source "CheckBoxTreeItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/TreeItem",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final CHECK_BOX_SELECTION_CHANGED_EVENT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private static updateLock:Z


# instance fields
.field private final independent:Ljavafx/beans/property/BooleanProperty;

.field private final indeterminate:Ljavafx/beans/property/BooleanProperty;

.field private final selected:Ljavafx/beans/property/BooleanProperty;

.field private final stateChangeListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 107
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "checkBoxSelectionChangedEvent"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/CheckBoxTreeItem;->CHECK_BOX_SELECTION_CHANGED_EVENT:Ljavafx/event/EventType;

    .line 254
    const/4 v0, 0x0

    sput-boolean v0, Ljavafx/scene/control/CheckBoxTreeItem;->updateLock:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/CheckBoxTreeItem;-><init>(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/control/CheckBoxTreeItem;-><init>(Ljava/lang/Object;Ljavafx/scene/Node;Z)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/scene/Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljavafx/scene/Node;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "graphic":Ljavafx/scene/Node;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/CheckBoxTreeItem;-><init>(Ljava/lang/Object;Ljavafx/scene/Node;Z)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/scene/Node;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljavafx/scene/Node;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "graphic":Ljavafx/scene/Node;
    move v3, p3

    .local v3, "selected":Z
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/scene/control/CheckBoxTreeItem;-><init>(Ljava/lang/Object;Ljavafx/scene/Node;ZZ)V

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/scene/Node;ZZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljavafx/scene/Node;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "graphic":Ljavafx/scene/Node;
    move/from16 v3, p3

    .local v3, "selected":Z
    move/from16 v4, p4

    .local v4, "independent":Z
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Ljavafx/scene/control/TreeItem;-><init>(Ljava/lang/Object;Ljavafx/scene/Node;)V

    .line 188
    move-object v5, v0

    move-object v6, v0

    invoke-static {v6}, Ljavafx/scene/control/CheckBoxTreeItem$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/CheckBoxTreeItem;)Ljavafx/beans/value/ChangeListener;

    move-result-object v6

    iput-object v6, v5, Ljavafx/scene/control/CheckBoxTreeItem;->stateChangeListener:Ljavafx/beans/value/ChangeListener;

    .line 200
    move-object v5, v0

    new-instance v6, Ljavafx/scene/control/CheckBoxTreeItem$1;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v0

    const-string v10, "selected"

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/control/CheckBoxTreeItem$1;-><init>(Ljavafx/scene/control/CheckBoxTreeItem;Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v6, v5, Ljavafx/scene/control/CheckBoxTreeItem;->selected:Ljavafx/beans/property/BooleanProperty;

    .line 215
    move-object v5, v0

    new-instance v6, Ljavafx/scene/control/CheckBoxTreeItem$2;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v0

    const-string v10, "indeterminate"

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/control/CheckBoxTreeItem$2;-><init>(Ljavafx/scene/control/CheckBoxTreeItem;Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v6, v5, Ljavafx/scene/control/CheckBoxTreeItem;->indeterminate:Ljavafx/beans/property/BooleanProperty;

    .line 242
    move-object v5, v0

    new-instance v6, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    const-string v9, "independent"

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v6, v5, Ljavafx/scene/control/CheckBoxTreeItem;->independent:Ljavafx/beans/property/BooleanProperty;

    .line 174
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Ljavafx/scene/control/CheckBoxTreeItem;->setSelected(Z)V

    .line 175
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/CheckBoxTreeItem;->setIndependent(Z)V

    .line 177
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/CheckBoxTreeItem;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/CheckBoxTreeItem;->stateChangeListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 178
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/CheckBoxTreeItem;->indeterminateProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/CheckBoxTreeItem;->stateChangeListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 179
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/CheckBoxTreeItem;Ljavafx/scene/control/CheckBoxTreeItem;Z)V
    .locals 6

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/CheckBoxTreeItem;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/CheckBoxTreeItem;
    move v2, p2

    .local v2, "x2":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/CheckBoxTreeItem;->fireEvent(Ljavafx/scene/control/CheckBoxTreeItem;Z)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/CheckBoxTreeItem;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/CheckBoxTreeItem;->lambda$new$602(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static checkBoxSelectionChangedEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 105
    sget-object v0, Ljavafx/scene/control/CheckBoxTreeItem;->CHECK_BOX_SELECTION_CHANGED_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method

.method private fireEvent(Ljavafx/scene/control/CheckBoxTreeItem;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/CheckBoxTreeItem",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move v2, p2

    .local v2, "selectionChanged":Z
    new-instance v4, Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sget-object v6, Ljavafx/scene/control/CheckBoxTreeItem;->CHECK_BOX_SELECTION_CHANGED_EVENT:Ljavafx/event/EventType;

    move-object v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent;-><init>(Ljavafx/event/EventType;Ljavafx/scene/control/CheckBoxTreeItem;Z)V

    move-object v3, v4

    .line 313
    .local v3, "evt":Ljavafx/event/Event;
    move-object v4, v0

    move-object v5, v3

    invoke-static {v4, v5}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 314
    return-void
.end method

.method private synthetic lambda$new$602(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move-object v1, p1

    .local v1, "ov":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldVal":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newVal":Ljava/lang/Boolean;
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/control/CheckBoxTreeItem;->updateState()V

    .line 190
    return-void
.end method

.method private updateDownwards()V
    .locals 6

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/CheckBoxTreeItem;->isLeaf()Z

    move-result v4

    if-nez v4, :cond_1

    .line 302
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/CheckBoxTreeItem;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeItem;

    move-object v2, v4

    .line 303
    .local v2, "child":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/control/CheckBoxTreeItem;

    if-eqz v4, :cond_0

    .line 304
    move-object v4, v2

    check-cast v4, Ljavafx/scene/control/CheckBoxTreeItem;

    move-object v3, v4

    .line 305
    .local v3, "cbti":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/CheckBoxTreeItem;->isSelected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/CheckBoxTreeItem;->setSelected(Z)V

    .line 307
    .end local v3    # "cbti":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    :cond_0
    goto :goto_0

    .line 309
    .end local v2    # "child":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_1
    return-void
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/CheckBoxTreeItem;->isIndependent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    :goto_0
    return-void

    .line 259
    :cond_0
    sget-boolean v2, Ljavafx/scene/control/CheckBoxTreeItem;->updateLock:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v1, v2

    .line 262
    .local v1, "firstLock":Z
    const/4 v2, 0x1

    sput-boolean v2, Ljavafx/scene/control/CheckBoxTreeItem;->updateLock:Z

    .line 263
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/CheckBoxTreeItem;->updateUpwards()V

    .line 265
    move v2, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    sput-boolean v2, Ljavafx/scene/control/CheckBoxTreeItem;->updateLock:Z

    .line 268
    :cond_1
    sget-boolean v2, Ljavafx/scene/control/CheckBoxTreeItem;->updateLock:Z

    if-eqz v2, :cond_3

    goto :goto_0

    .line 259
    .end local v1    # "firstLock":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 269
    .restart local v1    # "firstLock":Z
    :cond_3
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/CheckBoxTreeItem;->updateDownwards()V

    .line 270
    goto :goto_0
.end method

.method private updateUpwards()V
    .locals 9

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/CheckBoxTreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v7

    instance-of v7, v7, Ljavafx/scene/control/CheckBoxTreeItem;

    if-nez v7, :cond_0

    .line 296
    :goto_0
    return-void

    .line 275
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/CheckBoxTreeItem;->getParent()Ljavafx/scene/control/TreeItem;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/CheckBoxTreeItem;

    move-object v1, v7

    .line 276
    .local v1, "parent":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<*>;"
    const/4 v7, 0x0

    move v2, v7

    .line 277
    .local v2, "selectCount":I
    const/4 v7, 0x0

    move v3, v7

    .line 278
    .local v3, "indeterminateCount":I
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/CheckBoxTreeItem;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    :goto_1
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/TreeItem;

    move-object v5, v7

    .line 279
    .local v5, "child":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    move-object v7, v5

    instance-of v7, v7, Ljavafx/scene/control/CheckBoxTreeItem;

    if-nez v7, :cond_1

    goto :goto_1

    .line 281
    :cond_1
    move-object v7, v5

    check-cast v7, Ljavafx/scene/control/CheckBoxTreeItem;

    move-object v6, v7

    .line 283
    .local v6, "cbti":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<*>;"
    move v7, v2

    move-object v8, v6

    invoke-virtual {v8}, Ljavafx/scene/control/CheckBoxTreeItem;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v6

    invoke-virtual {v8}, Ljavafx/scene/control/CheckBoxTreeItem;->isIndeterminate()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    :goto_2
    add-int/2addr v7, v8

    move v2, v7

    .line 284
    move v7, v3

    move-object v8, v6

    invoke-virtual {v8}, Ljavafx/scene/control/CheckBoxTreeItem;->isIndeterminate()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_3
    add-int/2addr v7, v8

    move v3, v7

    .line 285
    goto :goto_1

    .line 283
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 284
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 287
    .end local v5    # "child":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    .end local v6    # "cbti":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<*>;"
    :cond_4
    move v7, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/CheckBoxTreeItem;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->size()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 288
    move-object v7, v1

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljavafx/scene/control/CheckBoxTreeItem;->setSelected(Z)V

    .line 289
    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/control/CheckBoxTreeItem;->setIndeterminate(Z)V

    .line 296
    :goto_4
    goto :goto_0

    .line 290
    :cond_5
    move v7, v2

    if-nez v7, :cond_6

    move v7, v3

    if-nez v7, :cond_6

    .line 291
    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/control/CheckBoxTreeItem;->setSelected(Z)V

    .line 292
    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/control/CheckBoxTreeItem;->setIndeterminate(Z)V

    goto :goto_4

    .line 294
    :cond_6
    move-object v7, v1

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljavafx/scene/control/CheckBoxTreeItem;->setIndeterminate(Z)V

    goto :goto_4
.end method


# virtual methods
.method public final independentProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBoxTreeItem;->independent:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    return-object v0
.end method

.method public final indeterminateProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBoxTreeItem;->indeterminate:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    return-object v0
.end method

.method public final isIndependent()Z
    .locals 2

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBoxTreeItem;->independent:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    return v0
.end method

.method public final isIndeterminate()Z
    .locals 2

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBoxTreeItem;->indeterminate:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    return v0
.end method

.method public final isSelected()Z
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBoxTreeItem;->selected:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    return v0
.end method

.method public final selectedProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBoxTreeItem;->selected:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    return-object v0
.end method

.method public final setIndependent(Z)V
    .locals 4

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/CheckBoxTreeItem;->independentProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setIndeterminate(Z)V
    .locals 4

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/CheckBoxTreeItem;->indeterminateProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setSelected(Z)V
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/CheckBoxTreeItem;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

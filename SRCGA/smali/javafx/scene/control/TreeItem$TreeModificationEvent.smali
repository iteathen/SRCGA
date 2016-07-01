.class public Ljavafx/scene/control/TreeItem$TreeModificationEvent;
.super Ljavafx/event/Event;
.source "TreeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TreeModificationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/event/Event;"
    }
.end annotation


# static fields
.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x41ce93d1651f761bL


# instance fields
.field private final added:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final change:Ljavafx/collections/ListChangeListener$Change;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener$Change",
            "<+",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final newValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final removed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final transient treeItem:Ljavafx/scene/control/TreeItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final wasCollapsed:Z

.field private final wasExpanded:Z

.field private wasPermutated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 971
    # getter for: Ljavafx/scene/control/TreeItem;->TREE_NOTIFICATION_EVENT:Ljavafx/event/EventType;
    invoke-static {}, Ljavafx/scene/control/TreeItem;->access$800()Ljavafx/event/EventType;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->ANY:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/event/Event;",
            ">;",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 995
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/event/Event;>;"
    move-object v2, p2

    .local v2, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;-><init>(Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;Ljava/lang/Object;)V

    .line 996
    return-void
.end method

.method public constructor <init>(Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/event/Event;",
            ">;",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 1009
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/event/Event;>;"
    move-object v2, p2

    .local v2, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    .line 1010
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->treeItem:Ljavafx/scene/control/TreeItem;

    .line 1011
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->newValue:Ljava/lang/Object;

    .line 1012
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->added:Ljava/util/List;

    .line 1013
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->removed:Ljava/util/List;

    .line 1014
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->change:Ljavafx/collections/ListChangeListener$Change;

    .line 1015
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasExpanded:Z

    .line 1016
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasCollapsed:Z

    .line 1017
    return-void
.end method

.method public constructor <init>(Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/event/Event;",
            ">;",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1055
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/event/Event;>;"
    move-object v2, p2

    .local v2, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, p3

    .local v3, "added":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, p4

    .local v4, "removed":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;-><init>(Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;Ljava/util/List;Ljava/util/List;Ljavafx/collections/ListChangeListener$Change;)V

    .line 1056
    return-void
.end method

.method private constructor <init>(Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;Ljava/util/List;Ljava/util/List;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/event/Event;",
            ">;",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1076
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/event/Event;>;"
    move-object v2, p2

    .local v2, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, p3

    .local v3, "added":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, p4

    .local v4, "removed":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v5, p5

    .local v5, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    .line 1077
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->treeItem:Ljavafx/scene/control/TreeItem;

    .line 1078
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->newValue:Ljava/lang/Object;

    .line 1079
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->added:Ljava/util/List;

    .line 1080
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->removed:Ljava/util/List;

    .line 1081
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->change:Ljavafx/collections/ListChangeListener$Change;

    .line 1082
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasExpanded:Z

    .line 1083
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasCollapsed:Z

    .line 1085
    move-object v6, v0

    move-object v7, v3

    if-eqz v7, :cond_0

    move-object v7, v4

    if-eqz v7, :cond_0

    move-object v7, v3

    .line 1086
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_0

    move-object v7, v3

    move-object v8, v4

    .line 1087
    invoke-interface {v7, v8}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, v6, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasPermutated:Z

    .line 1088
    return-void

    .line 1087
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;Ljava/util/List;Ljava/util/List;Ljavafx/collections/ListChangeListener$Change;Ljavafx/scene/control/TreeItem$1;)V
    .locals 13

    .prologue
    .line 964
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/control/TreeItem;
    move-object/from16 v3, p3

    .local v3, "x2":Ljava/util/List;
    move-object/from16 v4, p4

    .local v4, "x3":Ljava/util/List;
    move-object/from16 v5, p5

    .local v5, "x4":Ljavafx/collections/ListChangeListener$Change;
    move-object/from16 v6, p6

    .local v6, "x5":Ljavafx/scene/control/TreeItem$1;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-direct/range {v7 .. v12}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;-><init>(Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;Ljava/util/List;Ljava/util/List;Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method public constructor <init>(Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/event/Event;",
            ">;",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 1030
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/event/Event;>;"
    move-object v2, p2

    .local v2, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move v3, p3

    .local v3, "expanded":Z
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    .line 1031
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->treeItem:Ljavafx/scene/control/TreeItem;

    .line 1032
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->newValue:Ljava/lang/Object;

    .line 1033
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->added:Ljava/util/List;

    .line 1034
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->removed:Ljava/util/List;

    .line 1035
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->change:Ljavafx/collections/ListChangeListener$Change;

    .line 1036
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasExpanded:Z

    .line 1037
    move-object v4, v0

    move v5, v3

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v4, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasCollapsed:Z

    .line 1038
    return-void

    .line 1037
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method static synthetic access$602(Ljavafx/scene/control/TreeItem$TreeModificationEvent;Z)Z
    .locals 7

    .prologue
    .line 964
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TreeItem$TreeModificationEvent;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasPermutated:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/TreeItem$TreeModificationEvent;
    return v0
.end method


# virtual methods
.method public getAddedChildren()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1122
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->added:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->added:Ljava/util/List;

    goto :goto_0
.end method

.method public getAddedSize()I
    .locals 2

    .prologue
    .line 1152
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getAddedChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    return v0
.end method

.method getChange()Ljavafx/collections/ListChangeListener$Change;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1187
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->change:Ljavafx/collections/ListChangeListener$Change;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    return-object v0
.end method

.method getFrom()I
    .locals 2

    .prologue
    .line 1185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->change:Ljavafx/collections/ListChangeListener$Change;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->change:Ljavafx/collections/ListChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v1

    goto :goto_0
.end method

.method public getNewValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->newValue:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    return-object v0
.end method

.method public getRemovedChildren()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->removed:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->removed:Ljava/util/List;

    goto :goto_0
.end method

.method public getRemovedSize()I
    .locals 2

    .prologue
    .line 1142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getRemovedChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    return v0
.end method

.method public bridge synthetic getSource()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 964
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getSource()Ljavafx/scene/control/TreeItem;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    return-object v0
.end method

.method public getSource()Ljavafx/scene/control/TreeItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1095
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->treeItem:Ljavafx/scene/control/TreeItem;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    return-object v0
.end method

.method getTo()I
    .locals 2

    .prologue
    .line 1186
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->change:Ljavafx/collections/ListChangeListener$Change;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->change:Ljavafx/collections/ListChangeListener$Change;

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v1

    goto :goto_0
.end method

.method public getTreeItem()Ljavafx/scene/control/TreeItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->treeItem:Ljavafx/scene/control/TreeItem;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    return-object v0
.end method

.method public wasAdded()Z
    .locals 2

    .prologue
    .line 1171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getAddedSize()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wasCollapsed()Z
    .locals 2

    .prologue
    .line 1165
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasCollapsed:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    return v0
.end method

.method public wasExpanded()Z
    .locals 2

    .prologue
    .line 1159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasExpanded:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    return v0
.end method

.method public wasPermutated()Z
    .locals 2

    .prologue
    .line 1183
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->wasPermutated:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    return v0
.end method

.method public wasRemoved()Z
    .locals 2

    .prologue
    .line 1177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;->getRemovedSize()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeItem$TreeModificationEvent;, "Ljavafx/scene/control/TreeItem$TreeModificationEvent<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

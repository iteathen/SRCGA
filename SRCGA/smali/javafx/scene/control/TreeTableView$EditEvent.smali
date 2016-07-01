.class public Ljavafx/scene/control/TreeTableView$EditEvent;
.super Ljavafx/event/Event;
.source "TreeTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
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

.field private static final serialVersionUID:J = -0x3d93820f0571b590L


# instance fields
.field private final newValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final oldValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final transient treeItem:Ljavafx/scene/control/TreeItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2103
    # getter for: Ljavafx/scene/control/TreeTableView;->EDIT_ANY_EVENT:Ljavafx/event/EventType;
    invoke-static {}, Ljavafx/scene/control/TreeTableView;->access$2300()Ljavafx/event/EventType;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TreeTableView$EditEvent;->ANY:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/TreeTableView;Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/scene/control/TreeTableView$EditEvent;",
            ">;",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;TS;TS;)V"
        }
    .end annotation

    .prologue
    .line 2117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$EditEvent;, "Ljavafx/scene/control/TreeTableView$EditEvent<TS;>;"
    move-object v1, p1

    .local v1, "source":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v2, p2

    .local v2, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/scene/control/TreeTableView$EditEvent;>;"
    move-object v3, p3

    .local v3, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v4, p4

    .local v4, "oldValue":Ljava/lang/Object;, "TS;"
    move-object v5, p5

    .local v5, "newValue":Ljava/lang/Object;, "TS;"
    move-object v6, v0

    move-object v7, v1

    sget-object v8, Ljavafx/event/Event;->NULL_SOURCE_TARGET:Ljavafx/event/EventTarget;

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Ljavafx/event/Event;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 2118
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Ljavafx/scene/control/TreeTableView$EditEvent;->oldValue:Ljava/lang/Object;

    .line 2119
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Ljavafx/scene/control/TreeTableView$EditEvent;->newValue:Ljava/lang/Object;

    .line 2120
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljavafx/scene/control/TreeTableView$EditEvent;->treeItem:Ljavafx/scene/control/TreeItem;

    .line 2121
    return-void
.end method


# virtual methods
.method public getNewValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 2141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$EditEvent;, "Ljavafx/scene/control/TreeTableView$EditEvent<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$EditEvent;->newValue:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$EditEvent;, "Ljavafx/scene/control/TreeTableView$EditEvent<TS;>;"
    return-object v0
.end method

.method public getOldValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 2149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$EditEvent;, "Ljavafx/scene/control/TreeTableView$EditEvent<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$EditEvent;->oldValue:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$EditEvent;, "Ljavafx/scene/control/TreeTableView$EditEvent<TS;>;"
    return-object v0
.end method

.method public bridge synthetic getSource()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2097
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$EditEvent;, "Ljavafx/scene/control/TreeTableView$EditEvent<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$EditEvent;->getSource()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$EditEvent;, "Ljavafx/scene/control/TreeTableView$EditEvent<TS;>;"
    return-object v0
.end method

.method public getSource()Ljavafx/scene/control/TreeTableView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 2127
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$EditEvent;, "Ljavafx/scene/control/TreeTableView$EditEvent<TS;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/event/Event;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$EditEvent;, "Ljavafx/scene/control/TreeTableView$EditEvent<TS;>;"
    return-object v0
.end method

.method public getTreeItem()Ljavafx/scene/control/TreeItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 2134
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$EditEvent;, "Ljavafx/scene/control/TreeTableView$EditEvent<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$EditEvent;->treeItem:Ljavafx/scene/control/TreeItem;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$EditEvent;, "Ljavafx/scene/control/TreeTableView$EditEvent<TS;>;"
    return-object v0
.end method

.class public Ljavafx/scene/control/TreeView$EditEvent;
.super Ljavafx/event/Event;
.source "TreeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditEvent"
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

.field private static final serialVersionUID:J = -0x3d93820f0571b590L


# instance fields
.field private final newValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final oldValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1171
    # getter for: Ljavafx/scene/control/TreeView;->EDIT_ANY_EVENT:Ljavafx/event/EventType;
    invoke-static {}, Ljavafx/scene/control/TreeView;->access$1200()Ljavafx/event/EventType;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TreeView$EditEvent;->ANY:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/TreeView;Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/scene/control/TreeView$EditEvent;",
            ">;",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 1185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$EditEvent;, "Ljavafx/scene/control/TreeView$EditEvent<TT;>;"
    move-object v1, p1

    .local v1, "source":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v2, p2

    .local v2, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/scene/control/TreeView$EditEvent;>;"
    move-object v3, p3

    .local v3, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v4, p4

    .local v4, "oldValue":Ljava/lang/Object;, "TT;"
    move-object v5, p5

    .local v5, "newValue":Ljava/lang/Object;, "TT;"
    move-object v6, v0

    move-object v7, v1

    sget-object v8, Ljavafx/event/Event;->NULL_SOURCE_TARGET:Ljavafx/event/EventTarget;

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Ljavafx/event/Event;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 1186
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Ljavafx/scene/control/TreeView$EditEvent;->oldValue:Ljava/lang/Object;

    .line 1187
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Ljavafx/scene/control/TreeView$EditEvent;->newValue:Ljava/lang/Object;

    .line 1188
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljavafx/scene/control/TreeView$EditEvent;->treeItem:Ljavafx/scene/control/TreeItem;

    .line 1189
    return-void
.end method


# virtual methods
.method public getNewValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$EditEvent;, "Ljavafx/scene/control/TreeView$EditEvent<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView$EditEvent;->newValue:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView$EditEvent;, "Ljavafx/scene/control/TreeView$EditEvent<TT;>;"
    return-object v0
.end method

.method public getOldValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1217
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$EditEvent;, "Ljavafx/scene/control/TreeView$EditEvent<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView$EditEvent;->oldValue:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView$EditEvent;, "Ljavafx/scene/control/TreeView$EditEvent<TT;>;"
    return-object v0
.end method

.method public bridge synthetic getSource()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$EditEvent;, "Ljavafx/scene/control/TreeView$EditEvent<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeView$EditEvent;->getSource()Ljavafx/scene/control/TreeView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView$EditEvent;, "Ljavafx/scene/control/TreeView$EditEvent<TT;>;"
    return-object v0
.end method

.method public getSource()Ljavafx/scene/control/TreeView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$EditEvent;, "Ljavafx/scene/control/TreeView$EditEvent<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/event/Event;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView$EditEvent;, "Ljavafx/scene/control/TreeView$EditEvent<TT;>;"
    return-object v0
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
    .line 1202
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$EditEvent;, "Ljavafx/scene/control/TreeView$EditEvent<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView$EditEvent;->treeItem:Ljavafx/scene/control/TreeItem;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeView$EditEvent;, "Ljavafx/scene/control/TreeView$EditEvent<TT;>;"
    return-object v0
.end method

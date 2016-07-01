.class public Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent;
.super Ljavafx/event/Event;
.source "CheckBoxTreeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/CheckBoxTreeItem;
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
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x7533ee2a11770997L


# instance fields
.field private final selectionChanged:Z

.field private final transient treeItem:Ljavafx/scene/control/CheckBoxTreeItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/CheckBoxTreeItem",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 336
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "TREE_MODIFICATION"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent;->ANY:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljavafx/event/EventType;Ljavafx/scene/control/CheckBoxTreeItem;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/event/Event;",
            ">;",
            "Ljavafx/scene/control/CheckBoxTreeItem",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent;, "Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent<TT;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/event/Event;>;"
    move-object v2, p2

    .local v2, "treeItem":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move v3, p3

    .local v3, "selectionChanged":Z
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    .line 346
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent;->treeItem:Ljavafx/scene/control/CheckBoxTreeItem;

    .line 347
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent;->selectionChanged:Z

    .line 348
    return-void
.end method


# virtual methods
.method public getTreeItem()Ljavafx/scene/control/CheckBoxTreeItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/CheckBoxTreeItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent;, "Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent;->treeItem:Ljavafx/scene/control/CheckBoxTreeItem;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent;, "Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent<TT;>;"
    return-object v0
.end method

.method public wasIndeterminateChanged()Z
    .locals 2

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent;, "Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent;->selectionChanged:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent;, "Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent;, "Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wasSelectionChanged()Z
    .locals 2

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent;, "Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent;->selectionChanged:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent;, "Ljavafx/scene/control/CheckBoxTreeItem$TreeModificationEvent<TT;>;"
    return v0
.end method

.class public Ljavafx/scene/control/ListView$EditEvent;
.super Ljavafx/event/Event;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ListView;
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

.field private static final serialVersionUID:J = 0x1332ba4L


# instance fields
.field private final editIndex:I

.field private final newValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1115
    # getter for: Ljavafx/scene/control/ListView;->EDIT_ANY_EVENT:Ljavafx/event/EventType;
    invoke-static {}, Ljavafx/scene/control/ListView;->access$1100()Ljavafx/event/EventType;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/ListView$EditEvent;->ANY:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/ListView;Ljavafx/event/EventType;Ljava/lang/Object;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ListView",
            "<TT;>;",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;TT;I)V"
        }
    .end annotation

    .prologue
    .line 1126
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$EditEvent;, "Ljavafx/scene/control/ListView$EditEvent<TT;>;"
    move-object v1, p1

    .local v1, "source":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v2, p2

    .local v2, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/scene/control/ListView$EditEvent<TT;>;>;"
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Object;, "TT;"
    move v4, p4

    .local v4, "editIndex":I
    move-object v5, v0

    move-object v6, v1

    sget-object v7, Ljavafx/event/Event;->NULL_SOURCE_TARGET:Ljavafx/event/EventTarget;

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Ljavafx/event/Event;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 1127
    move-object v5, v0

    move v6, v4

    iput v6, v5, Ljavafx/scene/control/ListView$EditEvent;->editIndex:I

    .line 1128
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljavafx/scene/control/ListView$EditEvent;->newValue:Ljava/lang/Object;

    .line 1129
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 2

    .prologue
    .line 1142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$EditEvent;, "Ljavafx/scene/control/ListView$EditEvent<TT;>;"
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/ListView$EditEvent;->editIndex:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView$EditEvent;, "Ljavafx/scene/control/ListView$EditEvent<TT;>;"
    return v0
.end method

.method public getNewValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$EditEvent;, "Ljavafx/scene/control/ListView$EditEvent<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView$EditEvent;->newValue:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView$EditEvent;, "Ljavafx/scene/control/ListView$EditEvent<TT;>;"
    return-object v0
.end method

.method public bridge synthetic getSource()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$EditEvent;, "Ljavafx/scene/control/ListView$EditEvent<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ListView$EditEvent;->getSource()Ljavafx/scene/control/ListView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView$EditEvent;, "Ljavafx/scene/control/ListView$EditEvent<TT;>;"
    return-object v0
.end method

.method public getSource()Ljavafx/scene/control/ListView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/ListView",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1135
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$EditEvent;, "Ljavafx/scene/control/ListView$EditEvent<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/event/Event;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ListView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView$EditEvent;, "Ljavafx/scene/control/ListView$EditEvent<TT;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$EditEvent;, "Ljavafx/scene/control/ListView$EditEvent<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ListViewEditEvent [ newValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListView$EditEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ListView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ListView$EditEvent;->getSource()Ljavafx/scene/control/ListView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView$EditEvent;, "Ljavafx/scene/control/ListView$EditEvent<TT;>;"
    return-object v0
.end method

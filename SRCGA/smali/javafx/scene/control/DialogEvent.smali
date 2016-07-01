.class public Ljavafx/scene/control/DialogEvent;
.super Ljavafx/event/Event;
.source "DialogEvent.java"


# static fields
.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIALOG_CLOSE_REQUEST:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIALOG_HIDDEN:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIALOG_HIDING:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIALOG_SHOWING:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIALOG_SHOWN:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x13352acL


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 54
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "DIALOG"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/DialogEvent;->ANY:Ljavafx/event/EventType;

    .line 60
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/control/DialogEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "DIALOG_SHOWING"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/DialogEvent;->DIALOG_SHOWING:Ljavafx/event/EventType;

    .line 66
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/control/DialogEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "DIALOG_SHOWN"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/DialogEvent;->DIALOG_SHOWN:Ljavafx/event/EventType;

    .line 72
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/control/DialogEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "DIALOG_HIDING"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/DialogEvent;->DIALOG_HIDING:Ljavafx/event/EventType;

    .line 78
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/control/DialogEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "DIALOG_HIDDEN"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/DialogEvent;->DIALOG_HIDDEN:Ljavafx/event/EventType;

    .line 87
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/control/DialogEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "DIALOG_CLOSE_REQUEST"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/DialogEvent;->DIALOG_CLOSE_REQUEST:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/Dialog;Ljavafx/event/EventType;)V
    .locals 7
    .param p1    # Ljavafx/scene/control/Dialog;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "source"
        .end annotation
    .end param
    .param p2    # Ljavafx/event/EventType;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "eventType"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/Dialog",
            "<*>;",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogEvent;
    move-object v1, p1

    .local v1, "source":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<*>;"
    move-object v2, p2

    .local v2, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/event/Event;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Ljavafx/event/Event;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 100
    return-void
.end method


# virtual methods
.method public bridge synthetic copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogEvent;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/DialogEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/control/DialogEvent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/DialogEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/control/DialogEvent;
    .locals 6

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/event/Event;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/DialogEvent;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/DialogEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/control/DialogEvent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventTarget;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;)",
            "Ljavafx/scene/control/DialogEvent;"
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v3, p3

    .local v3, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/control/DialogEvent;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/DialogEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/control/DialogEvent;

    move-result-object v5

    move-object v4, v5

    .line 130
    .local v4, "e":Ljavafx/scene/control/DialogEvent;
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Ljavafx/scene/control/DialogEvent;->eventType:Ljavafx/event/EventType;

    .line 131
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/control/DialogEvent;
    return-object v0
.end method

.method public getEventType()Ljavafx/event/EventType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/DialogEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogEvent;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogEvent;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogEvent;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "DialogEvent ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 109
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    const-string v3, "source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/DialogEvent;->getSource()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 110
    move-object v2, v1

    const-string v3, ", target = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/DialogEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 111
    move-object v2, v1

    const-string v3, ", eventType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/DialogEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 112
    move-object v2, v1

    const-string v3, ", consumed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/DialogEvent;->isConsumed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 114
    move-object v2, v1

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/DialogEvent;
    return-object v0
.end method

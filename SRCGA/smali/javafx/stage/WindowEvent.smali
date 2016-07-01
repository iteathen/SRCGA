.class public Ljavafx/stage/WindowEvent;
.super Ljavafx/event/Event;
.source "WindowEvent.java"


# static fields
.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final WINDOW_CLOSE_REQUEST:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final WINDOW_HIDDEN:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final WINDOW_HIDING:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final WINDOW_SHOWING:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final WINDOW_SHOWN:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1330613L


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 44
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "WINDOW"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/stage/WindowEvent;->ANY:Ljavafx/event/EventType;

    .line 50
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/stage/WindowEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "WINDOW_SHOWING"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/stage/WindowEvent;->WINDOW_SHOWING:Ljavafx/event/EventType;

    .line 56
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/stage/WindowEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "WINDOW_SHOWN"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/stage/WindowEvent;->WINDOW_SHOWN:Ljavafx/event/EventType;

    .line 62
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/stage/WindowEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "WINDOW_HIDING"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/stage/WindowEvent;->WINDOW_HIDING:Ljavafx/event/EventType;

    .line 68
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/stage/WindowEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "WINDOW_HIDDEN"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/stage/WindowEvent;->WINDOW_HIDDEN:Ljavafx/event/EventType;

    .line 77
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/stage/WindowEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "WINDOW_CLOSE_REQUEST"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/stage/WindowEvent;->WINDOW_CLOSE_REQUEST:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljavafx/stage/Window;Ljavafx/event/EventType;)V
    .locals 7
    .param p1    # Ljavafx/stage/Window;
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
            "Ljavafx/stage/Window;",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowEvent;
    move-object v1, p1

    .local v1, "source":Ljavafx/stage/Window;
    move-object v2, p2

    .local v2, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/event/Event;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Ljavafx/event/Event;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 90
    return-void
.end method


# virtual methods
.method public bridge synthetic copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowEvent;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/stage/WindowEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/stage/WindowEvent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/stage/WindowEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/stage/WindowEvent;
    .locals 6

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/event/Event;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;

    move-result-object v3

    check-cast v3, Ljavafx/stage/WindowEvent;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/stage/WindowEvent;
    return-object v0
.end method

.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/stage/WindowEvent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventTarget;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;)",
            "Ljavafx/stage/WindowEvent;"
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v3, p3

    .local v3, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/stage/WindowEvent;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/stage/WindowEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/stage/WindowEvent;

    move-result-object v5

    move-object v4, v5

    .line 122
    .local v4, "e":Ljavafx/stage/WindowEvent;
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Ljavafx/stage/WindowEvent;->eventType:Ljavafx/event/EventType;

    .line 123
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Ljavafx/stage/WindowEvent;
    return-object v0
.end method

.method public getEventType()Ljavafx/event/EventType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowEvent;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/WindowEvent;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/WindowEvent;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "WindowEvent ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 99
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    const-string v3, "source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/WindowEvent;->getSource()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 100
    move-object v2, v1

    const-string v3, ", target = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/WindowEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 101
    move-object v2, v1

    const-string v3, ", eventType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/WindowEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 102
    move-object v2, v1

    const-string v3, ", consumed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/WindowEvent;->isConsumed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 104
    move-object v2, v1

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/WindowEvent;
    return-object v0
.end method

.class public Ljavafx/scene/control/SortEvent;
.super Ljavafx/event/Event;
.source "SortEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
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
            "Ljavafx/scene/control/SortEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final SORT_EVENT:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 42
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "SORT"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/SortEvent;->ANY:Ljavafx/event/EventType;

    .line 50
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/control/SortEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "SORT_EVENT"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/SortEvent;->SORT_EVENT:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "source"
        .end annotation
    .end param
    .param p2    # Ljavafx/event/EventTarget;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "target"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljavafx/event/EventTarget;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SortEvent;, "Ljavafx/scene/control/SortEvent<TC;>;"
    move-object v1, p1

    .local v1, "source":Ljava/lang/Object;, "TC;"
    move-object v2, p2

    .local v2, "target":Ljavafx/event/EventTarget;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {}, Ljavafx/scene/control/SortEvent;->sortEvent()Ljavafx/event/EventType;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/event/Event;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 65
    return-void
.end method

.method public static sortEvent()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/SortEvent",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 47
    sget-object v0, Ljavafx/scene/control/SortEvent;->SORT_EVENT:Ljavafx/event/EventType;

    return-object v0
.end method


# virtual methods
.method public getSource()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SortEvent;, "Ljavafx/scene/control/SortEvent<TC;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/event/Event;->getSource()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SortEvent;, "Ljavafx/scene/control/SortEvent<TC;>;"
    return-object v0
.end method

.class public Ljavafx/scene/control/ScrollToEvent;
.super Ljavafx/event/Event;
.source "ScrollToEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/event/Event;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/ScrollToEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCROLL_TO_COLUMN:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<*>;"
        }
    .end annotation
.end field

.field private static final SCROLL_TO_TOP_INDEX:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/ScrollToEvent",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x76c1cc9be11de314L


# instance fields
.field private final scrollTarget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 38
    const-class v0, Ljavafx/scene/control/ScrollToEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/scene/control/ScrollToEvent;->$assertionsDisabled:Z

    .line 52
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "SCROLL_TO"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/ScrollToEvent;->ANY:Ljavafx/event/EventType;

    .line 61
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/control/ScrollToEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "SCROLL_TO_TOP_INDEX"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/ScrollToEvent;->SCROLL_TO_TOP_INDEX:Ljavafx/event/EventType;

    .line 73
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/scene/control/ScrollToEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "SCROLL_TO_COLUMN"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/ScrollToEvent;->SCROLL_TO_COLUMN:Ljavafx/event/EventType;

    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljava/lang/Object;)V
    .locals 10
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
    .param p3    # Ljavafx/event/EventType;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "type"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "scrollTarget"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/event/EventTarget;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/ScrollToEvent",
            "<TT;>;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollToEvent;, "Ljavafx/scene/control/ScrollToEvent<TT;>;"
    move-object v1, p1

    .local v1, "source":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "target":Ljavafx/event/EventTarget;
    move-object v3, p3

    .local v3, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/control/ScrollToEvent<TT;>;>;"
    move-object v4, p4

    .local v4, "scrollTarget":Ljava/lang/Object;, "TT;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/event/Event;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 92
    sget-boolean v5, Ljavafx/scene/control/ScrollToEvent;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    move-object v5, v4

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 93
    :cond_0
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljavafx/scene/control/ScrollToEvent;->scrollTarget:Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public static scrollToColumn()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/scene/control/TableColumnBase",
            "<**>;>()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/ScrollToEvent",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 71
    sget-object v0, Ljavafx/scene/control/ScrollToEvent;->SCROLL_TO_COLUMN:Ljavafx/event/EventType;

    return-object v0
.end method

.method public static scrollToTopIndex()Ljavafx/event/EventType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/ScrollToEvent",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Ljavafx/scene/control/ScrollToEvent;->SCROLL_TO_TOP_INDEX:Ljavafx/event/EventType;

    return-object v0
.end method


# virtual methods
.method public getScrollTarget()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollToEvent;, "Ljavafx/scene/control/ScrollToEvent<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollToEvent;->scrollTarget:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollToEvent;, "Ljavafx/scene/control/ScrollToEvent<TT;>;"
    return-object v0
.end method

.class public Ljavafx/event/ActionEvent;
.super Ljavafx/event/Event;
.source "ActionEvent.java"


# static fields
.field public static final ACTION:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1330613L


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 41
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "ACTION"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/event/ActionEvent;->ACTION:Ljavafx/event/EventType;

    .line 48
    sget-object v0, Ljavafx/event/ActionEvent;->ACTION:Ljavafx/event/EventType;

    sput-object v0, Ljavafx/event/ActionEvent;->ANY:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Ljavafx/event/ActionEvent;
    move-object v1, v0

    sget-object v2, Ljavafx/event/ActionEvent;->ACTION:Ljavafx/event/EventType;

    invoke-direct {v1, v2}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/event/ActionEvent;
    move-object v1, p1

    .local v1, "source":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "target":Ljavafx/event/EventTarget;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget-object v6, Ljavafx/event/ActionEvent;->ACTION:Ljavafx/event/EventType;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/event/Event;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 69
    return-void
.end method


# virtual methods
.method public copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/ActionEvent;
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/event/ActionEvent;
    move-object v1, p1

    .local v1, "newSource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newTarget":Ljavafx/event/EventTarget;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/event/Event;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;

    move-result-object v3

    check-cast v3, Ljavafx/event/ActionEvent;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/event/ActionEvent;
    return-object v0
.end method

.method public bridge synthetic copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/Event;
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Ljavafx/event/ActionEvent;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/event/ActionEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/event/ActionEvent;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/event/ActionEvent;
    return-object v0
.end method

.method public getEventType()Ljavafx/event/EventType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/event/ActionEvent;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/event/ActionEvent;
    return-object v0
.end method

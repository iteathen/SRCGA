.class public final Lcom/sun/javafx/stage/FocusUngrabEvent;
.super Ljavafx/event/Event;
.source "FocusUngrabEvent.java"


# static fields
.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Lcom/sun/javafx/stage/FocusUngrabEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final FOCUS_UNGRAB:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Lcom/sun/javafx/stage/FocusUngrabEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1330613L


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 35
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "FOCUS_UNGRAB"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/javafx/stage/FocusUngrabEvent;->FOCUS_UNGRAB:Ljavafx/event/EventType;

    .line 38
    sget-object v0, Lcom/sun/javafx/stage/FocusUngrabEvent;->FOCUS_UNGRAB:Ljavafx/event/EventType;

    sput-object v0, Lcom/sun/javafx/stage/FocusUngrabEvent;->ANY:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/FocusUngrabEvent;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/stage/FocusUngrabEvent;->FOCUS_UNGRAB:Ljavafx/event/EventType;

    invoke-direct {v1, v2}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V
    .locals 7

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/FocusUngrabEvent;
    move-object v1, p1

    .local v1, "source":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "target":Ljavafx/event/EventTarget;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget-object v6, Lcom/sun/javafx/stage/FocusUngrabEvent;->FOCUS_UNGRAB:Ljavafx/event/EventType;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/event/Event;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 47
    return-void
.end method

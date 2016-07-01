.class public final Lcom/sun/javafx/stage/WindowCloseRequestHandler;
.super Lcom/sun/javafx/event/BasicEventDispatcher;
.source "WindowCloseRequestHandler.java"


# instance fields
.field private final window:Ljavafx/stage/Window;


# direct methods
.method public constructor <init>(Ljavafx/stage/Window;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/WindowCloseRequestHandler;
    move-object v1, p1

    .local v1, "window":Ljavafx/stage/Window;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/event/BasicEventDispatcher;-><init>()V

    .line 37
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/stage/WindowCloseRequestHandler;->window:Ljavafx/stage/Window;

    .line 38
    return-void
.end method


# virtual methods
.method public dispatchBubblingEvent(Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/WindowCloseRequestHandler;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/stage/WindowEvent;->WINDOW_CLOSE_REQUEST:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_0

    .line 45
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/stage/WindowCloseRequestHandler;->window:Ljavafx/stage/Window;

    invoke-virtual {v2}, Ljavafx/stage/Window;->hide()V

    .line 46
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->consume()V

    .line 49
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/stage/WindowCloseRequestHandler;
    return-object v0
.end method

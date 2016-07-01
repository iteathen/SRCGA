.class Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;
.super Ljava/lang/Object;
.source "MouseInputSynthesizer.java"


# static fields
.field private static final instance:Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;


# instance fields
.field private final mouseState:Lcom/sun/glass/ui/monocle/MouseState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;->instance:Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/monocle/MouseState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/MouseState;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;->mouseState:Lcom/sun/glass/ui/monocle/MouseState;

    .line 37
    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInput;->getInstance()Lcom/sun/glass/ui/monocle/MouseInput;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;->mouseState:Lcom/sun/glass/ui/monocle/MouseState;

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/monocle/MouseInput;->getState(Lcom/sun/glass/ui/monocle/MouseState;)V

    .line 38
    return-void
.end method

.method static getInstance()Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;->instance:Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;

    return-object v0
.end method


# virtual methods
.method setState(Lcom/sun/glass/ui/monocle/TouchState;)V
    .locals 6

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;
    move-object v1, p1

    .local v1, "touchState":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 46
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;->mouseState:Lcom/sun/glass/ui/monocle/MouseState;

    const/16 v4, 0xd4

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/MouseState;->releaseButton(I)V

    .line 50
    :goto_0
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/TouchState;->getPrimaryID()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/TouchState;->getPointForID(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v3

    move-object v2, v3

    .line 51
    .local v2, "p":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 52
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;->mouseState:Lcom/sun/glass/ui/monocle/MouseState;

    move-object v4, v2

    iget v4, v4, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/MouseState;->setX(I)V

    .line 53
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;->mouseState:Lcom/sun/glass/ui/monocle/MouseState;

    move-object v4, v2

    iget v4, v4, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/MouseState;->setY(I)V

    .line 55
    :cond_0
    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInput;->getInstance()Lcom/sun/glass/ui/monocle/MouseInput;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;->mouseState:Lcom/sun/glass/ui/monocle/MouseState;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/monocle/MouseInput;->setState(Lcom/sun/glass/ui/monocle/MouseState;Z)V

    .line 56
    return-void

    .line 48
    .end local v2    # "p":Lcom/sun/glass/ui/monocle/TouchState$Point;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MouseInputSynthesizer;->mouseState:Lcom/sun/glass/ui/monocle/MouseState;

    const/16 v4, 0xd4

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/MouseState;->pressButton(I)V

    goto :goto_0
.end method

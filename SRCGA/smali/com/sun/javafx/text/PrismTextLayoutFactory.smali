.class public Lcom/sun/javafx/text/PrismTextLayoutFactory;
.super Ljava/lang/Object;
.source "PrismTextLayoutFactory.java"

# interfaces
.implements Lcom/sun/javafx/scene/text/TextLayoutFactory;


# static fields
.field private static final factory:Lcom/sun/javafx/text/PrismTextLayoutFactory;

.field private static inUse:Z

.field private static final reusableTL:Lcom/sun/javafx/text/PrismTextLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/sun/javafx/text/PrismTextLayout;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/text/PrismTextLayout;-><init>()V

    sput-object v0, Lcom/sun/javafx/text/PrismTextLayoutFactory;->reusableTL:Lcom/sun/javafx/text/PrismTextLayout;

    .line 68
    new-instance v0, Lcom/sun/javafx/text/PrismTextLayoutFactory;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/text/PrismTextLayoutFactory;-><init>()V

    sput-object v0, Lcom/sun/javafx/text/PrismTextLayoutFactory;->factory:Lcom/sun/javafx/text/PrismTextLayoutFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayoutFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getFactory()Lcom/sun/javafx/text/PrismTextLayoutFactory;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/sun/javafx/text/PrismTextLayoutFactory;->factory:Lcom/sun/javafx/text/PrismTextLayoutFactory;

    return-object v0
.end method


# virtual methods
.method public createLayout()Lcom/sun/javafx/scene/text/TextLayout;
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayoutFactory;
    new-instance v1, Lcom/sun/javafx/text/PrismTextLayout;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/text/PrismTextLayout;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayoutFactory;
    return-object v0
.end method

.method public disposeLayout(Lcom/sun/javafx/scene/text/TextLayout;)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayoutFactory;
    move-object v1, p1

    .local v1, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/text/PrismTextLayoutFactory;->reusableTL:Lcom/sun/javafx/text/PrismTextLayout;

    if-ne v2, v3, :cond_0

    .line 64
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sun/javafx/text/PrismTextLayoutFactory;->inUse:Z

    .line 66
    :cond_0
    return-void
.end method

.method public getLayout()Lcom/sun/javafx/scene/text/TextLayout;
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/PrismTextLayoutFactory;
    sget-boolean v3, Lcom/sun/javafx/text/PrismTextLayoutFactory;->inUse:Z

    if-eqz v3, :cond_0

    .line 45
    new-instance v3, Lcom/sun/javafx/text/PrismTextLayout;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/javafx/text/PrismTextLayout;-><init>()V

    move-object v0, v3

    .line 56
    .end local v0    # "this":Lcom/sun/javafx/text/PrismTextLayoutFactory;
    :goto_0
    return-object v0

    .line 47
    .restart local v0    # "this":Lcom/sun/javafx/text/PrismTextLayoutFactory;
    :cond_0
    const-class v3, Lcom/sun/javafx/text/PrismTextLayoutFactory;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 48
    :try_start_0
    sget-boolean v3, Lcom/sun/javafx/text/PrismTextLayoutFactory;->inUse:Z

    if-eqz v3, :cond_1

    .line 49
    new-instance v3, Lcom/sun/javafx/text/PrismTextLayout;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/javafx/text/PrismTextLayout;-><init>()V

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    goto :goto_0

    .line 51
    :cond_1
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sun/javafx/text/PrismTextLayoutFactory;->inUse:Z

    .line 52
    sget-object v3, Lcom/sun/javafx/text/PrismTextLayoutFactory;->reusableTL:Lcom/sun/javafx/text/PrismTextLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/text/PrismTextLayout;->setAlignment(I)Z

    move-result v3

    .line 53
    sget-object v3, Lcom/sun/javafx/text/PrismTextLayoutFactory;->reusableTL:Lcom/sun/javafx/text/PrismTextLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/text/PrismTextLayout;->setWrapWidth(F)Z

    move-result v3

    .line 54
    sget-object v3, Lcom/sun/javafx/text/PrismTextLayoutFactory;->reusableTL:Lcom/sun/javafx/text/PrismTextLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/text/PrismTextLayout;->setDirection(I)Z

    move-result v3

    .line 55
    sget-object v3, Lcom/sun/javafx/text/PrismTextLayoutFactory;->reusableTL:Lcom/sun/javafx/text/PrismTextLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/text/PrismTextLayout;->setContent([Lcom/sun/javafx/scene/text/TextSpan;)Z

    move-result v3

    .line 56
    sget-object v3, Lcom/sun/javafx/text/PrismTextLayoutFactory;->reusableTL:Lcom/sun/javafx/text/PrismTextLayout;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.class final Ljavafx/scene/web/WebEngine$PulseTimer;
.super Ljava/lang/Object;
.source "WebEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/web/WebEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PulseTimer"
.end annotation


# static fields
.field private static final animation:Ljavafx/animation/AnimationTimer;

.field private static final listener:Lcom/sun/javafx/tk/TKPulseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 951
    new-instance v0, Ljavafx/scene/web/WebEngine$PulseTimer$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/web/WebEngine$PulseTimer$1;-><init>()V

    sput-object v0, Ljavafx/scene/web/WebEngine$PulseTimer;->animation:Ljavafx/animation/AnimationTimer;

    .line 956
    new-instance v0, Ljavafx/scene/web/WebEngine$PulseTimer$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/web/WebEngine$PulseTimer$2;-><init>()V

    sput-object v0, Ljavafx/scene/web/WebEngine$PulseTimer;->listener:Lcom/sun/javafx/tk/TKPulseListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 948
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$PulseTimer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1200()V
    .locals 0

    .prologue
    .line 948
    invoke-static {}, Ljavafx/scene/web/WebEngine$PulseTimer;->stop()V

    return-void
.end method

.method static synthetic access$500()V
    .locals 0

    .prologue
    .line 948
    invoke-static {}, Ljavafx/scene/web/WebEngine$PulseTimer;->start()V

    return-void
.end method

.method private static start()V
    .locals 2

    .prologue
    .line 968
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    sget-object v1, Ljavafx/scene/web/WebEngine$PulseTimer;->listener:Lcom/sun/javafx/tk/TKPulseListener;

    invoke-virtual {v0, v1}, Lcom/sun/javafx/tk/Toolkit;->addSceneTkPulseListener(Lcom/sun/javafx/tk/TKPulseListener;)V

    .line 970
    return-void
.end method

.method private static stop()V
    .locals 2

    .prologue
    .line 973
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    sget-object v1, Ljavafx/scene/web/WebEngine$PulseTimer;->listener:Lcom/sun/javafx/tk/TKPulseListener;

    invoke-virtual {v0, v1}, Lcom/sun/javafx/tk/Toolkit;->removeSceneTkPulseListener(Lcom/sun/javafx/tk/TKPulseListener;)V

    .line 975
    return-void
.end method

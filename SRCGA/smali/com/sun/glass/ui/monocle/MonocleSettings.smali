.class Lcom/sun/glass/ui/monocle/MonocleSettings;
.super Ljava/lang/Object;
.source "MonocleSettings.java"


# static fields
.field static final settings:Lcom/sun/glass/ui/monocle/MonocleSettings;


# instance fields
.field final traceEvents:Z

.field final traceEventsVerbose:Z

.field final tracePlatformConfig:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleSettings$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/glass/ui/monocle/MonocleSettings;

    sput-object v0, Lcom/sun/glass/ui/monocle/MonocleSettings;->settings:Lcom/sun/glass/ui/monocle/MonocleSettings;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleSettings;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v1, v0

    const-string v2, "monocle.input.traceEvents.verbose"

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/sun/glass/ui/monocle/MonocleSettings;->traceEventsVerbose:Z

    .line 42
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/glass/ui/monocle/MonocleSettings;->traceEventsVerbose:Z

    if-nez v2, :cond_0

    const-string v2, "monocle.input.traceEvents"

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Lcom/sun/glass/ui/monocle/MonocleSettings;->traceEvents:Z

    .line 43
    move-object v1, v0

    const-string v2, "monocle.platform.traceConfig"

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/sun/glass/ui/monocle/MonocleSettings;->tracePlatformConfig:Z

    .line 44
    return-void

    .line 42
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$lambda$0()Lcom/sun/glass/ui/monocle/MonocleSettings;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleSettings;->lambda$static$114()Lcom/sun/glass/ui/monocle/MonocleSettings;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$114()Lcom/sun/glass/ui/monocle/MonocleSettings;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/sun/glass/ui/monocle/MonocleSettings;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/MonocleSettings;-><init>()V

    return-object v0
.end method

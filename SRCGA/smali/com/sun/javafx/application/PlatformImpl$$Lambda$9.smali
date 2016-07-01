.class final synthetic Lcom/sun/javafx/application/PlatformImpl$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final instance:Lcom/sun/javafx/application/PlatformImpl$$Lambda$9;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sun/javafx/application/PlatformImpl$$Lambda$9;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$9;-><init>()V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl$$Lambda$9;->instance:Lcom/sun/javafx/application/PlatformImpl$$Lambda$9;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/sun/javafx/application/PlatformImpl$$Lambda$9;->instance:Lcom/sun/javafx/application/PlatformImpl$$Lambda$9;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 0
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    # invokes: Lcom/sun/javafx/application/PlatformImpl;->lambda$checkIdle$159()V
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->access$lambda$8()V

    return-void
.end method

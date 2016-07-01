.class final synthetic Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final instance:Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory$$Lambda$2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory$$Lambda$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory$$Lambda$2;-><init>()V

    sput-object v0, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory$$Lambda$2;->instance:Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory$$Lambda$2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    sget-object v0, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory$$Lambda$2;->instance:Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory$$Lambda$2;

    return-object v0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/sun/javafx/tk/quantum/QuantumRenderer$QuantumThreadFactory;->access$lambda$1(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

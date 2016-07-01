.class final synthetic Lcom/sun/javafx/tk/Toolkit$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final arg$1:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/tk/Toolkit$$Lambda$2;->arg$1:Z

    return-void
.end method

.method private static get$Lambda(Z)Ljava/security/PrivilegedAction;
    .locals 5

    move v0, p0

    new-instance v1, Lcom/sun/javafx/tk/Toolkit$$Lambda$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/Toolkit$$Lambda$2;-><init>(Z)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Z)Ljava/security/PrivilegedAction;
    .locals 5

    move v0, p0

    new-instance v1, Lcom/sun/javafx/tk/Toolkit$$Lambda$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/Toolkit$$Lambda$2;-><init>(Z)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/tk/Toolkit$$Lambda$2;->arg$1:Z

    invoke-static {v1}, Lcom/sun/javafx/tk/Toolkit;->access$lambda$1(Z)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

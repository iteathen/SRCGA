.class final synthetic Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final arg$1:Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;

.field private final arg$2:Lcom/sun/glass/ui/Screen;

.field private final arg$3:Lcom/sun/glass/ui/Screen;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;Lcom/sun/glass/ui/Screen;Lcom/sun/glass/ui/Screen;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$6;->arg$1:Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$6;->arg$2:Lcom/sun/glass/ui/Screen;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$6;->arg$3:Lcom/sun/glass/ui/Screen;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;Lcom/sun/glass/ui/Screen;Lcom/sun/glass/ui/Screen;)Ljava/security/PrivilegedAction;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$6;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$6;-><init>(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;Lcom/sun/glass/ui/Screen;Lcom/sun/glass/ui/Screen;)V

    move-object v0, v3

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;Lcom/sun/glass/ui/Screen;Lcom/sun/glass/ui/Screen;)Ljava/security/PrivilegedAction;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$6;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$6;-><init>(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;Lcom/sun/glass/ui/Screen;Lcom/sun/glass/ui/Screen;)V

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$6;->arg$1:Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$6;->arg$2:Lcom/sun/glass/ui/Screen;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$6;->arg$3:Lcom/sun/glass/ui/Screen;

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->access$lambda$5(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;Lcom/sun/glass/ui/Screen;Lcom/sun/glass/ui/Screen;)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

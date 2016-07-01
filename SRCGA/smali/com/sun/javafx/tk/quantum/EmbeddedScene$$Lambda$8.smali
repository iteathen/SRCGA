.class final synthetic Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final arg$1:Lcom/sun/javafx/tk/quantum/EmbeddedScene;

.field private final arg$2:I

.field private final arg$3:[C

.field private final arg$4:I

.field private final arg$5:I


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/EmbeddedScene;I[CII)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$8;->arg$1:Lcom/sun/javafx/tk/quantum/EmbeddedScene;

    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$8;->arg$2:I

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$8;->arg$3:[C

    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$8;->arg$4:I

    move-object v6, v0

    move v7, v5

    iput v7, v6, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$8;->arg$5:I

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/tk/quantum/EmbeddedScene;I[CII)Ljava/security/PrivilegedAction;
    .locals 13

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    new-instance v5, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$8;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$8;-><init>(Lcom/sun/javafx/tk/quantum/EmbeddedScene;I[CII)V

    move-object v0, v5

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedScene;I[CII)Ljava/security/PrivilegedAction;
    .locals 13

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    new-instance v5, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$8;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$8;-><init>(Lcom/sun/javafx/tk/quantum/EmbeddedScene;I[CII)V

    move-object v0, v5

    return-object v0
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$8;->arg$1:Lcom/sun/javafx/tk/quantum/EmbeddedScene;

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$8;->arg$2:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$8;->arg$3:[C

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$8;->arg$4:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$8;->arg$5:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->access$lambda$7(Lcom/sun/javafx/tk/quantum/EmbeddedScene;I[CII)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

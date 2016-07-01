.class final synthetic Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final arg$1:Lcom/sun/javafx/tk/quantum/EmbeddedScene;

.field private final arg$2:I

.field private final arg$3:I

.field private final arg$4:I

.field private final arg$5:I

.field private final arg$6:Z


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIZ)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$9;->arg$1:Lcom/sun/javafx/tk/quantum/EmbeddedScene;

    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$9;->arg$2:I

    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$9;->arg$3:I

    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$9;->arg$4:I

    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$9;->arg$5:I

    move-object v7, v0

    move v8, v6

    iput-boolean v8, v7, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$9;->arg$6:Z

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIZ)Ljava/security/PrivilegedAction;
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    new-instance v6, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$9;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$9;-><init>(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIZ)V

    move-object v0, v6

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIZ)Ljava/security/PrivilegedAction;
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    new-instance v6, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$9;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$9;-><init>(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIZ)V

    move-object v0, v6

    return-object v0
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 7
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$9;->arg$1:Lcom/sun/javafx/tk/quantum/EmbeddedScene;

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$9;->arg$2:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$9;->arg$3:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$9;->arg$4:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$9;->arg$5:I

    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$9;->arg$6:Z

    invoke-static/range {v1 .. v6}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->access$lambda$8(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIZ)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

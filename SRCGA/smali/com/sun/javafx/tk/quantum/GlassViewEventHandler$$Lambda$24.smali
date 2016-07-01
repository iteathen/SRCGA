.class final synthetic Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$24;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final arg$1:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

.field private final arg$2:J

.field private final arg$3:I

.field private final arg$4:Z

.field private final arg$5:I


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;JIZI)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$24;->arg$1:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object v7, v0

    move-wide v8, v2

    iput-wide v8, v7, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$24;->arg$2:J

    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$24;->arg$3:I

    move-object v7, v0

    move v8, v5

    iput-boolean v8, v7, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$24;->arg$4:Z

    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$24;->arg$5:I

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;JIZI)Ljava/security/PrivilegedAction;
    .locals 17

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    new-instance v7, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$24;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v1

    move-wide v10, v2

    move v12, v4

    move v13, v5

    move v14, v6

    invoke-direct/range {v8 .. v14}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$24;-><init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;JIZI)V

    move-object v1, v7

    return-object v1
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;JIZI)Ljava/security/PrivilegedAction;
    .locals 17

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    new-instance v7, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$24;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v1

    move-wide v10, v2

    move v12, v4

    move v13, v5

    move v14, v6

    invoke-direct/range {v8 .. v14}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$24;-><init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;JIZI)V

    move-object v1, v7

    return-object v1
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 7
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$24;->arg$1:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$24;->arg$2:J

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$24;->arg$3:I

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$24;->arg$4:Z

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$24;->arg$5:I

    invoke-static/range {v1 .. v6}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$lambda$21(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;JIZI)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

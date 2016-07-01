.class final synthetic Ljavafx/css/StyleablePropertyFactory$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final arg$1:Ljava/lang/Class;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/util/function/Function;

.field private final arg$4:Ljava/lang/Enum;

.field private final arg$5:Z


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Enum;Z)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/css/StyleablePropertyFactory$$Lambda$5;->arg$1:Ljava/lang/Class;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljavafx/css/StyleablePropertyFactory$$Lambda$5;->arg$2:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljavafx/css/StyleablePropertyFactory$$Lambda$5;->arg$3:Ljava/util/function/Function;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Ljavafx/css/StyleablePropertyFactory$$Lambda$5;->arg$4:Ljava/lang/Enum;

    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Ljavafx/css/StyleablePropertyFactory$$Lambda$5;->arg$5:Z

    return-void
.end method

.method private static get$Lambda(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Enum;Z)Ljava/util/function/Function;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    new-instance v5, Ljavafx/css/StyleablePropertyFactory$$Lambda$5;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    invoke-direct/range {v6 .. v11}, Ljavafx/css/StyleablePropertyFactory$$Lambda$5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Enum;Z)V

    move-object v0, v5

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Enum;Z)Ljava/util/function/Function;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    new-instance v5, Ljavafx/css/StyleablePropertyFactory$$Lambda$5;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    invoke-direct/range {v6 .. v11}, Ljavafx/css/StyleablePropertyFactory$$Lambda$5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Enum;Z)V

    move-object v0, v5

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/css/StyleablePropertyFactory$$Lambda$5;->arg$1:Ljava/lang/Class;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/css/StyleablePropertyFactory$$Lambda$5;->arg$2:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/css/StyleablePropertyFactory$$Lambda$5;->arg$3:Ljava/util/function/Function;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/css/StyleablePropertyFactory$$Lambda$5;->arg$4:Ljava/lang/Enum;

    move-object v6, v0

    iget-boolean v6, v6, Ljavafx/css/StyleablePropertyFactory$$Lambda$5;->arg$5:Z

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Ljavafx/css/StyleablePropertyFactory;->access$lambda$4(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Enum;ZLjava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

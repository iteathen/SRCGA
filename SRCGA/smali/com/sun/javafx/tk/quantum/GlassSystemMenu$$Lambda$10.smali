.class final synthetic Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# instance fields
.field private final arg$1:Lcom/sun/javafx/tk/quantum/GlassSystemMenu;

.field private final arg$2:Lcom/sun/glass/ui/MenuItem;

.field private final arg$3:Lcom/sun/javafx/menu/MenuItemBase;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$10;->arg$1:Lcom/sun/javafx/tk/quantum/GlassSystemMenu;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$10;->arg$2:Lcom/sun/glass/ui/MenuItem;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$10;->arg$3:Lcom/sun/javafx/menu/MenuItemBase;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;)Ljavafx/beans/InvalidationListener;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$10;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$10;-><init>(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;)V

    move-object v0, v3

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;)Ljavafx/beans/InvalidationListener;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$10;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$10;-><init>(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;)V

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$10;->arg$1:Lcom/sun/javafx/tk/quantum/GlassSystemMenu;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$10;->arg$2:Lcom/sun/glass/ui/MenuItem;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$10;->arg$3:Lcom/sun/javafx/menu/MenuItemBase;

    move-object v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->access$lambda$9(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;Ljavafx/beans/Observable;)V

    return-void
.end method

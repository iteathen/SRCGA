.class Lcom/sun/javafx/tk/quantum/QuantumToolkit$2;
.super Lcom/sun/glass/ui/Application$EventHandler;
.source "QuantumToolkit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runToolkit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/tk/quantum/QuantumToolkit;


# direct methods
.method constructor <init>(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)V
    .locals 4

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit$2;->this$0:Lcom/sun/javafx/tk/quantum/QuantumToolkit;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/glass/ui/Application$EventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleQuitAction(Lcom/sun/glass/ui/Application;J)V
    .locals 0
    .param p1, "app"    # Lcom/sun/glass/ui/Application;
    .param p2, "time"    # J

    .prologue
    .line 333
    invoke-static {}, Lcom/sun/javafx/tk/quantum/GlassStage;->requestClosingAllWindows()V

    .line 334
    return-void
.end method

.method public handleThemeChanged(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$2;
    move-object v1, p1

    .local v1, "themeName":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/application/PlatformImpl;->setAccessibilityTheme(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$2;
    return v0
.end method

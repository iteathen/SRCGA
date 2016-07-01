.class Lcom/sun/javafx/tk/quantum/QuantumToolkit$4;
.super Lcom/sun/glass/ui/Screen$EventHandler;
.source "QuantumToolkit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/tk/quantum/QuantumToolkit;->setScreenConfigurationListener(Lcom/sun/javafx/tk/TKScreenConfigurationListener;)Lcom/sun/javafx/tk/ScreenConfigurationAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/tk/quantum/QuantumToolkit;

.field final synthetic val$listener:Lcom/sun/javafx/tk/TKScreenConfigurationListener;


# direct methods
.method constructor <init>(Lcom/sun/javafx/tk/quantum/QuantumToolkit;Lcom/sun/javafx/tk/TKScreenConfigurationListener;)V
    .locals 5

    .prologue
    .line 682
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$4;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit$4;->this$0:Lcom/sun/javafx/tk/quantum/QuantumToolkit;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit$4;->val$listener:Lcom/sun/javafx/tk/TKScreenConfigurationListener;

    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/glass/ui/Screen$EventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSettingsChanged()V
    .locals 2

    .prologue
    .line 684
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$4;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit$4;->val$listener:Lcom/sun/javafx/tk/TKScreenConfigurationListener;

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->access$000(Lcom/sun/javafx/tk/TKScreenConfigurationListener;)V

    .line 685
    return-void
.end method

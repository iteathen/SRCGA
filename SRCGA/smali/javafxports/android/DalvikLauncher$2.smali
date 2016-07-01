.class Ljavafxports/android/DalvikLauncher$2;
.super Ljava/lang/Object;
.source "DalvikLauncher.java"

# interfaces
.implements Lcom/sun/javafx/application/PlatformImpl$FinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafxports/android/DalvikLauncher;->registerExitListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafxports/android/DalvikLauncher;


# direct methods
.method constructor <init>(Ljavafxports/android/DalvikLauncher;)V
    .locals 4

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/DalvikLauncher$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafxports/android/DalvikLauncher;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafxports/android/DalvikLauncher$2;->this$0:Ljavafxports/android/DalvikLauncher;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exitCalled()V
    .locals 3

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/DalvikLauncher$2;
    const-string v1, "DalvikLauncher"

    const-string v2, "FinishListener exit called"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 249
    move-object v1, v0

    iget-object v1, v1, Ljavafxports/android/DalvikLauncher$2;->this$0:Ljavafxports/android/DalvikLauncher;

    invoke-static {v1}, Ljavafxports/android/DalvikLauncher;->access$300(Ljavafxports/android/DalvikLauncher;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 250
    return-void
.end method

.method public idle(Z)V
    .locals 6

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/DalvikLauncher$2;
    move v1, p1

    .local v1, "implicitExit":Z
    const-string v2, "DalvikLauncher"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FinishListener idle called with exit = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 245
    move-object v2, v0

    iget-object v2, v2, Ljavafxports/android/DalvikLauncher$2;->this$0:Ljavafxports/android/DalvikLauncher;

    invoke-static {v2}, Ljavafxports/android/DalvikLauncher;->access$300(Ljavafxports/android/DalvikLauncher;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 246
    return-void
.end method

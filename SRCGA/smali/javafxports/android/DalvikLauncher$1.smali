.class Ljavafxports/android/DalvikLauncher$1;
.super Ljava/lang/Object;
.source "DalvikLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafxports/android/DalvikLauncher;->launchApp(Ljavafxports/android/FXDalvikEntity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafxports/android/DalvikLauncher;

.field final synthetic val$applicationClass:Ljava/lang/Class;

.field final synthetic val$javafxApplicationClass:Ljava/lang/Class;

.field final synthetic val$launchMethod:Ljava/lang/reflect/Method;

.field final synthetic val$preloaderClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljavafxports/android/DalvikLauncher;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 8

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/DalvikLauncher$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafxports/android/DalvikLauncher;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafxports/android/DalvikLauncher$1;->this$0:Ljavafxports/android/DalvikLauncher;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljavafxports/android/DalvikLauncher$1;->val$javafxApplicationClass:Ljava/lang/Class;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljavafxports/android/DalvikLauncher$1;->val$applicationClass:Ljava/lang/Class;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Ljavafxports/android/DalvikLauncher$1;->val$launchMethod:Ljava/lang/reflect/Method;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Ljavafxports/android/DalvikLauncher$1;->val$preloaderClass:Ljava/lang/Class;

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/DalvikLauncher$1;
    const/4 v2, 0x1

    invoke-static {v2}, Ljavafxports/android/DalvikLauncher;->access$002(Z)Z

    move-result v2

    .line 187
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Ljavafxports/android/DalvikLauncher$1;->val$javafxApplicationClass:Ljava/lang/Class;

    move-object v3, v0

    iget-object v3, v3, Ljavafxports/android/DalvikLauncher$1;->val$applicationClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    move-object v2, v0

    iget-object v2, v2, Ljavafxports/android/DalvikLauncher$1;->val$launchMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Ljavafxports/android/DalvikLauncher$1;->val$applicationClass:Ljava/lang/Class;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Ljavafxports/android/DalvikLauncher$1;->val$preloaderClass:Ljava/lang/Class;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 199
    .line 200
    :goto_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljavafxports/android/DalvikLauncher;->access$202(Z)Z

    move-result v2

    .line 201
    const/4 v2, 0x0

    invoke-static {v2}, Ljavafxports/android/DalvikLauncher;->access$002(Z)Z

    move-result v2

    .line 202
    return-void

    .line 192
    :cond_0
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Ljavafxports/android/DalvikLauncher$1;->val$applicationClass:Ljava/lang/Class;

    const-string v3, "main"

    .line 193
    # getter for: Ljavafxports/android/DalvikLauncher;->MAIN_METHOD_ARGS:[Ljava/lang/Class;
    invoke-static {}, Ljavafxports/android/DalvikLauncher;->access$100()[Ljava/lang/Class;

    move-result-object v4

    .line 192
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v1, v2

    .line 194
    .local v1, "mainMethod":Ljava/lang/reflect/Method;
    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 197
    .end local v1    # "mainMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 198
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

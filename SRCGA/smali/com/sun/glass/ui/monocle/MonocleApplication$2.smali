.class Lcom/sun/glass/ui/monocle/MonocleApplication$2;
.super Ljava/lang/Object;
.source "MonocleApplication.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/glass/ui/monocle/MonocleApplication;->staticScreen_getScreens()[Lcom/sun/glass/ui/Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/reflect/Constructor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/glass/ui/monocle/MonocleApplication;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/monocle/MonocleApplication;)V
    .locals 4

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/MonocleApplication$2;->this$0:Lcom/sun/glass/ui/monocle/MonocleApplication;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication$2;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/MonocleApplication$2;->run()Ljava/lang/reflect/Constructor;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication$2;
    return-object v0
.end method

.method public run()Ljava/lang/reflect/Constructor;
    .locals 8

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication$2;
    :try_start_0
    const-class v2, Lcom/sun/glass/ui/Screen;

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x6

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x9

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0xa

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0xb

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0xc

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0xd

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    move-object v1, v2

    .line 240
    .local v1, "c":Ljava/lang/reflect/Constructor;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    move-object v2, v1

    move-object v0, v2

    .line 244
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication$2;
    .end local v1    # "c":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v0

    .line 242
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication$2;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

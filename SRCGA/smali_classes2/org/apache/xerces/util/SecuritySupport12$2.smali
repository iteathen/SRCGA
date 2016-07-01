.class Lorg/apache/xerces/util/SecuritySupport12$2;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xerces/util/SecuritySupport12;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xerces/util/SecuritySupport12;

.field final synthetic val$propName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/xerces/util/SecuritySupport12;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SecuritySupport12$2;
    move-object v1, p1

    .local v1, "this$0":Lorg/apache/xerces/util/SecuritySupport12;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/util/SecuritySupport12$2;->this$0:Lorg/apache/xerces/util/SecuritySupport12;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/util/SecuritySupport12$2;->val$propName:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SecuritySupport12$2;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SecuritySupport12$2;->val$propName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/SecuritySupport12$2;
    return-object v0
.end method

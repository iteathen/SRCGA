.class public final Ljavafx/application/HostServices;
.super Ljava/lang/Object;
.source "HostServices.java"


# instance fields
.field private final delegate:Lcom/sun/javafx/application/HostServicesDelegate;


# direct methods
.method constructor <init>(Ljavafx/application/Application;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/application/HostServices;
    move-object v1, p1

    .local v1, "app":Ljavafx/application/Application;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/application/HostServicesDelegate;->getInstance(Ljavafx/application/Application;)Lcom/sun/javafx/application/HostServicesDelegate;

    move-result-object v3

    iput-object v3, v2, Ljavafx/application/HostServices;->delegate:Lcom/sun/javafx/application/HostServicesDelegate;

    .line 53
    return-void
.end method


# virtual methods
.method public final getCodeBase()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/application/HostServices;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/application/HostServices;->delegate:Lcom/sun/javafx/application/HostServicesDelegate;

    invoke-virtual {v1}, Lcom/sun/javafx/application/HostServicesDelegate;->getCodeBase()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/application/HostServices;
    return-object v0
.end method

.method public final getDocumentBase()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/application/HostServices;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/application/HostServices;->delegate:Lcom/sun/javafx/application/HostServicesDelegate;

    invoke-virtual {v1}, Lcom/sun/javafx/application/HostServicesDelegate;->getDocumentBase()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/application/HostServices;
    return-object v0
.end method

.method public final getWebContext()Lnetscape/javascript/JSObject;
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/application/HostServices;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/application/HostServices;->delegate:Lcom/sun/javafx/application/HostServicesDelegate;

    invoke-virtual {v1}, Lcom/sun/javafx/application/HostServicesDelegate;->getWebContext()Lnetscape/javascript/JSObject;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/application/HostServices;
    return-object v0
.end method

.method public final resolveURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/application/HostServices;
    move-object v1, p1

    .local v1, "base":Ljava/lang/String;
    move-object v2, p2

    .local v2, "rel":Ljava/lang/String;
    move-object v4, v1

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    move-object v3, v4

    .line 114
    .local v3, "uri":Ljava/net/URI;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/application/HostServices;
    return-object v0
.end method

.method public final showDocument(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/application/HostServices;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/application/HostServices;->delegate:Lcom/sun/javafx/application/HostServicesDelegate;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/application/HostServicesDelegate;->showDocument(Ljava/lang/String;)V

    .line 128
    return-void
.end method

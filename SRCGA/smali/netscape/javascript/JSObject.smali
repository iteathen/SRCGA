.class public abstract Lnetscape/javascript/JSObject;
.super Ljava/lang/Object;
.source "JSObject.java"


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lnetscape/javascript/JSObject;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static getWindow(Ljava/applet/Applet;)Lnetscape/javascript/JSObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnetscape/javascript/JSException;
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "applet":Ljava/applet/Applet;
    new-instance v1, Lnetscape/javascript/JSException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Unexpected error: This method should not be used unless loaded from plugin.jar"

    invoke-direct {v2, v3}, Lnetscape/javascript/JSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public varargs abstract call(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnetscape/javascript/JSException;
        }
    .end annotation
.end method

.method public abstract eval(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnetscape/javascript/JSException;
        }
    .end annotation
.end method

.method public abstract getMember(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnetscape/javascript/JSException;
        }
    .end annotation
.end method

.method public abstract getSlot(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnetscape/javascript/JSException;
        }
    .end annotation
.end method

.method public abstract removeMember(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnetscape/javascript/JSException;
        }
    .end annotation
.end method

.method public abstract setMember(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnetscape/javascript/JSException;
        }
    .end annotation
.end method

.method public abstract setSlot(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnetscape/javascript/JSException;
        }
    .end annotation
.end method

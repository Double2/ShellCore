origin="cocos2d-2.1rc0-x-2.1.3"
for (( i=1; i<=10; i=i+1 ))
do
        tmp=`echo $COCOS2DX_ROOT | cut -d '/' -f$i | grep cocos`
	        if [ "$tmp" != "" ];then
			target=$tmp;
		fi
done
#target="cocos2d-x-2.1.4"
origin2=atwood
target2=`pwd |cut -d '/' -f3`
for varown in atwood double2 David deak
do
for varfile in jni/Android.mk .cproject .externalToolBuilders/NDK_Builder.launch .settings/org.eclipse.cdt.core.prefs
do
cat proj.android/$varfile | sed "s/$origin/$target/g"   > proj.android/tmpfile
rm proj.android/$varfile
mv proj.android/tmpfile proj.android/$varfile

cat proj.android/$varfile | sed "s/$varown/$target2/g" > proj.android/tmpfile
rm proj.android/$varfile
mv proj.android/tmpfile proj.android/$varfile 
done
done


